#! /bin/bash

file="phonebook.dat"

echo -e "\e[32m" "1. Starts or ends with Jose:" "\e[0m"
grep -E "^Jose|Jose$" "$file"
echo

echo -e "2. Contain a sequence of at least 27 upper or lower-case alphabetic characters:" "\e[0m"
grep -E "[a-zA-Z]{27,}" "$file"
echo

echo -e "\e[32m" "3. Consists of more than 18 characters. The characters can be anything, including alphabetic and numeric:" "\e[0m"
grep -E ".{19,}" "$file"
echo

echo -e "\e[32m" "4. Contains exactly 10 characters.  The characters can be anything, including alphabetic and numeric:" "\e[0m"
grep -E "^.{10}$" "$file"
echo

echo -e "\e[32m" "5. Contains a sequence between 6 and 8 upper- or lower-case alphabetic characters. The sequence must be separated from the rest of the line by a space or tab on each side:" "\e[0m"
grep -E " [a-zA-Z]{6,8} " "$file"
echo

echo -e "\e[32m" "6. Contains a local phone number:" "\e[0m"
grep -E "^[0-9]{3}-[0-9]{4}$" "$file"
echo

echo -e "\e[32m" "7. Contains a valid URL on a line by itself:" "\e[0m"
grep -E "^(http|https)://[a-zA-Z0-9./?=_-]+$" "$file"


