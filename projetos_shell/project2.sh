#!/bin/bash
quem="<@UPJTJA2HG> e <@UPXM1H4UQ> escreveram"
mensagem=$(zenity --entry --text "Type your message below" --title "Slack Message" --entry-text="")  2>/dev/null
emoji=":thumbsup::grin:"

if [[ -z $mensagem ]]; then
    zenity --warning --title "Error" --width 300 --text "Ops, você precisa passar uma mensagem como argumento!" 2>/dev/null
    exit 1
else 
    (for i in $(seq 0 1 2); do echo $i; sleep 1; done) | zenity --progress --title "Slack Message" --text "Sending..." --auto-close 2>/dev/null
fi

curl -s -X POST -H 'Content-type: application/json' --data "{\"text\":\"$quem: $mensagem $emoji\"}" https://hooks.slack.com/services/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 > /dev/null
zenity --info --width 300 --title "Slack Message" --text "A mensagem foi enviada com sucesso!" 2>/dev/null