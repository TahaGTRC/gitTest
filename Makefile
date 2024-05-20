# Makefile

README.md: guessinggame.sh
    echo "Date and Time of Make: $$(date)" >> README.md
    echo >> README.md
    echo "Number of Lines in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md
