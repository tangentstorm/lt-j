#!/usr/bin/env j
NB. --- learntris in j -----------------------------------------

ltj =: {{
  select. y
  case. ,'q' do. exit''
  case. ,'p' do. draw''
  case. do. echo 'unknown command: '; y
  end. }}

matrix =: 22 10 $ '.'
draw =: {{ echo ,/"_1' ',"0 matrix }}

NB. --- interpreter loop ---------------------------------------

rl =: [: 1!:1 1:               NB. read line from stdin (handle 1)
do =: [: (9!:29) 1: [ 9!:27    NB. run string y instead of j listener
ex =: '2!:55'''''              NB. string sent on EOF from stdin

main =: {{
  while. ex -.@-: s=. rl'' do.
    ltj s
  end.
  exit''}}

NB. ^D will exit. ^C will drop into j
do 'main _'
