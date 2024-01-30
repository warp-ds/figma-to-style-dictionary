import { mkdirSync, existsSync } from "fs";
import { zip } from "zip-a-folder";

const dir = "./dist";

async function zipFiles() {
  if (!existsSync(dir)) {
    mkdirSync(dir);
  }
  await zip("./output/android", "./dist/android.zip");
  await zip("./output/ios", "./dist/ios.zip");
  await zip("./output/web", "./dist/web.zip");
}

zipFiles();
