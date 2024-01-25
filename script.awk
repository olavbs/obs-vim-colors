#!/usr/bin/awk -f

/^[^"]/{
  if ($0 ~ /^>/) {
    gsub(/^>\s*/, "", $0)
    print $0
  } else {
    gsub(/black_b/,   "8",  $0)
    gsub(/red_b/,     "9",  $0)
    gsub(/green_b/,   "10", $0)
    gsub(/yellow_b/,  "11", $0)
    gsub(/blue_b/,    "12", $0)
    gsub(/magenta_b/, "13", $0)
    gsub(/cyan_b/,    "14", $0)
    gsub(/white_b/,   "15", $0)
    gsub(/black/,     "0",  $0)
    gsub(/red/,       "1",  $0)
    gsub(/green/,     "2",  $0)
    gsub(/yellow/,    "3",  $0)
    gsub(/blue/,      "4",  $0)
    gsub(/magenta/,   "5",  $0)
    gsub(/cyan/,      "6",  $0)
    gsub(/white/,     "7",  $0)
    if ($1 ~ /[^-]/) printf "hi " $1
    if ($2 ~ /[^-]/) printf " ctermfg=" $2
    if ($3 ~ /[^-]/) printf " ctermbg=" $3
    if ($4 ~ /[^-]/) printf " guifg=" $4
    if ($5 ~ /[^-]/) printf " guibg=" $5
    if ($6 ~ /[^-]/) printf " cterm=" $6 " gui=" $6
    print ""
  }
}
