leap_year_checkers = [
    lambda year: year % 4 == 0,
    lambda year: (year % 100 != 0) or (year % 400 == 0)
]


def is_leap_year(year):
    checked_list = [checker(year) for checker in leap_year_checkers]
    return all(checked_list)


onValid = "{} is a leap year"
onInvalid = "{} is not a leap year"


argc = int(input())
while argc > 0:
    year = int(input())
    text = onValid if is_leap_year(year) else onInvalid
    print(text.format(year))
    argc -= 1
