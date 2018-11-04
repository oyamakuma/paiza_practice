#!/bin/bash

readonly TRUE=0
readonly FALSE=1


function main() {
  declare -i count
  declare -i index=0
  read -r count
  while [ "${index}" -lt "${count}" ]; do
    read -r year
    # trim()
    year="$(tr -d $'\n' <<<"${year}")"
    if is_leap_year "${year}"; then
      echo "${year} is a leap year"
    else
      echo "${year} is not a leap year"
    fi
    index+=1
  done
}


function is_dividable_with() {
  (
  declare -i remains="${1}"
  while [ "${remains}" -ge "${2}" ]; do
    remains="$(("${remains}" - "${2}"))"
  done
  if [ "${remains}" -gt 0 ]; then
    return "${FALSE}"
  else
    return "${TRUE}"
  fi
  )
}


function is_leap_year() {
  if ! (is_dividable_with "${1}" 4); then
    return "${FALSE}"
  elif ! (is_dividable_with "${1}" 100) || is_dividable_with "${1}" 400; then
    return "${TRUE}"
  fi
  return "${FALSE}"
}


main
