const readline = require('readline')
process.stdin.resume()
process.stdin.setEncoding('utf8')

const years = []
const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
})

reader.on('line', (line) => {
  years.push(Number(line))
})

reader.on('close', () => {
  for (const year of years.slice(1)) {
    const result = isLeapYear(year) ? `${year} is a leap year` :`${year} is not a leap year`
    console.log(result)
  }
})

const leapYearCheckers = [
  (year) => year % 4 === 0,
  (year) => (year % 100 !== 0) || (year % 400 === 0)
]

const isLeapYear = (year) => {
  const checked = leapYearCheckers.map((checker) => checker(year))
  return !checked.includes(false)
}
