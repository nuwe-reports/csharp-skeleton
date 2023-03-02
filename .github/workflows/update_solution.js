const fs = require('fs')
const DomParser = require('dom-parser')
var parser = new DomParser()
const assertionResults = []
const parentDir = 'test/CsharpBasicSkeleton.Tests/TestResults/'
fs.readdirSync(parentDir).forEach((fileName) => {
    const filePath = parentDir + fileName
    if (fs.lstatSync(filePath).isDirectory()) {
        return
    }
    const file = fs.readFileSync(filePath)
    var fileString = file.toString()
    fileString = fileString.replaceAll("UnitTestResult", "unittestresult") //Crashed with caps
    const dom = parser.parseFromString(fileString)
    dom.getElementsByTagName("unittestresult").forEach((testcase) => {
        testName = testcase.getAttribute("testName")
        testResult = testcase.getAttribute("outcome")
        assertionResults.push(testResult === "Passed")
    })
})
console.log(assertionResults)