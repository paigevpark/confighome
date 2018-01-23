vim $(git diff $1 | egrep "^....b/" | cut -d " " -f 2 | cut -d "/" -f 2-)
