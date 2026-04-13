/**
 * Use this module in repl using the following import function
 * const futil = await import("./FileUtils.js");
 * or
 * const futil = require("./FileUtils.js");
 */
import * as fs from 'node:fs'

/**
 * call: readJson(filePath) Reads file as json.
 * 
 * @param {string} filePath The file path to open as json.
 * @returns 
 */
export function readJson(filePath) {
    let fileBuffer = fs.readFileSync(filePath)
    let string = fileBuffer.toString();
    return JSON.parse(string)
}
readJson.help = "call: readJson(filePath) Reads file as json.";

/**
 * call: writeJson(object, filePath) Writes object to file as json
 * 
 * @param {any} object Any object to serialize
 * @param {string} filePath The file path to store object as json.
 */
export function writeJson(object, filePath) {
    return fs.writeFileSync(filePath, JSON.stringify(object));
}
writeJson.help = "call: writeJson(object, filePath) Writes object to file as json";

export function help() {
    let helps = [
        "Each function in module has roperty help set which contains the help for method.",
        "To use the help for readJson do 'futil.readJson.help"
    ];
    console.log(helps);
}