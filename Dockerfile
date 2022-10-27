FROM heroku/heroku:18
RUN apt install xterm
CMD bash heroku.sh
