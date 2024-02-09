import 'dotenv/config';
import ora from 'ora';
import fs from 'fs';
import prompts from 'prompts';

const ENV_PATH = './.env';

const spinner = ora(
  'Reading Figma access token'
);

async function main() {
  spinner.start()

  let projectId = process.env.FIGMA_PROJECT_ID;
  let token = process.env.FIGMA_TOKEN;

  if (token) {
    spinner.succeed('Using Figma access token from environment viariables');
  } else {
    spinner.warn('No Figma access token found');
    token = await getTokenFromPrompt();
  };

  if (projectId) {
    spinner.succeed('Using Figma project ID from environment viariables');
  } else {
    spinner.warn('No Figma project ID found');
    projectId = await getProjectIdFromPrompt();
  };

  spinner.start('Loading Figma project');

  let localVariables
  try {
    localVariables = await getLocalVariables(projectId, token);
    spinner.succeed('Loaded Figma variables');
  } catch (e) {
    spinner.fail('Unable to load Figma variables', e.message);
    return;
  };
  
  let outputDir = './data';

  if (!fs.existsSync(outputDir)) {
    fs.mkdirSync(outputDir);
  };
  
  fs.writeFileSync(`${outputDir}/figma.json`, JSON.stringify(localVariables, null, 2));

  console.log(`✅ Figma variables have been written to the ${outputDir} directory`);
};

main();

/**
 * Get all local variables from a Figma project
 */
async function getLocalVariables(projectId, token) {
  const resp = await fetch(
    `https://api.figma.com/v1/files/${projectId}/variables/local`,
    { 
      headers: {
        'X-Figma-Token': token,
      },
    }
  )
  
  const json = await resp.json();

  if (!resp.ok) {
    throw new Error(json.err);
  };

  return json;
}

function writeEnvVarToDisk({ name, value }) {
  if (fs.existsSync(ENV_PATH)) {
    return fs.appendFileSync(ENV_PATH, `\n${name}=${value}`, 'utf8');
  }

  return fs.writeFileSync(ENV_PATH, `${name}=${value}`, 'utf8');
}

async function getProjectIdFromPrompt() {
  let projectId

  const projectIdPrompt = await prompts({
    type: 'text',
    name: 'projectId',
    message:
      'Enter the Figma project ID',
  });

  projectId = projectIdPrompt.projectId;

  const { saveProjectId } = await prompts({
    type: 'confirm',
    name: 'saveProjectId',
    message: 'Would you like to save the Figma project ID?',
  });

  if (saveProjectId) {
    writeEnvVarToDisk({ name: "FIGMA_PROJECT_ID", value: projectId });
    spinner.succeed('Saved project ID to ' + ENV_PATH);
  }

  return projectId
}

async function getTokenFromPrompt() {
  let figmaToken

  const tokenPrompt = await prompts({
    type: 'text',
    name: 'figmaToken',
    message:
      'Enter your Figma access token (https://www.figma.com/developers/api#access-tokens)',
  });

  figmaToken = tokenPrompt.figmaToken;

  const { saveToken } = await prompts({
    type: 'confirm',
    name: 'saveToken',
    message: 'Would you like to save the token?',
  });

  if (saveToken) {
    writeEnvVarToDisk({ name: "FIGMA_TOKEN", value: figmaToken });
    spinner.succeed('Saved token to ' + ENV_PATH);
  }

  return figmaToken;
}