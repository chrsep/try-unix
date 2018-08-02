alias l='(head -n [0-9]* con*; ls ??[^umbirdfsn]*>& ~/X &&echo Here there is:\
        && head -1q ??[^umbirdfsn]*;ls 1 >&~/X||mv -f 9 1 >&~/X)'

alias look='mv -f 1 9 >& ~/X; l'

alias BacktrackTest='cd `pwd -P` >& ~/X; expr `pwd|xargs basename` =='
alias nogo='echo "You cannot go that way."'

alias nw='BacktrackTest se>&~/X && cd .. || cd nw>& ~/X    && l    || nogo'
alias ne='BacktrackTest sw>&~/X && cd .. || cd ne>& ~/X    && l    || nogo'
alias sw='BacktrackTest ne>&~/X && cd .. || cd sw>& ~/X    && l    || nogo'
alias se='BacktrackTest nw>&~/X && cd .. || cd se>& ~/X    && l    || nogo'
alias e='BacktrackTest w >& ~/X && cd .. || cd e >& ~/X    && l    || nogo'
alias n='BacktrackTest s >& ~/X && cd .. || cd n >& ~/X    && l    || nogo'
alias s='BacktrackTest n >& ~/X && cd .. || cd s >& ~/X    && l    || nogo'
alias d='BacktrackTest u >& ~/X && cd .. || cd d >& ~/X    && l    || nogo'

alias u='cd u >&~/X && l || nogo'

alias w='~/trydoor; BacktrackTest e >& ~/X && cd .. || cd w >& ~/X && l||nogo;\
         chmod u-x ~/pa3/start/e/e/n/w'

alias i='echo You currently have:;head -1q ~/pa3/items/??[^xumbirdfs]*'
alias sleep='cat .sleep 2> ~/X || \
            echo "You try to sleep standing up, but cannot manage it."'
alias dig='ls ~/pa3/items/shovel>& ~/X && (mv .platinum platinum 2> ~/X &&echo\
          "I think you found something"||echo "Digging here reveals nothing.")\
	  || echo "You have nothing with which to dig"' 

alias get='~/get'
alias drop='~/drop'
alias x='~/exam'
alias reset='~/reset'
alias put='~/put'
alias cut='~/cut'

alias game='cd ~; chmod u+x pa3/start/e/e/n/w >& ~/X; rm -r pa3>&~/X;\
            tar -xf rooms.tar >& ~/X; cd pa3/start; chmod u-x e/e/n/w; clear;\
	    l; PS1="> "'

alias quit='score;cd ~;unalias l look BacktrackTest nogo n e w s ne nw se sw i\
           sleep dig get drop x reset put cut game quit score flush; PS1=\$\ '

alias score='echo You have scored `ls ~/pa3/treasures/gold ~/pa3/treasures/platinum ~/pa3/treasures/diamond ~/pa3/treasures/bracelet 2> ~/X | wc -l | xargs expr 10 \*` points out of 90 possible points.'
alias flush='ls urinal >& ~/X || echo "There is no urinal in this room" ; ls urinal >& ~/X && (mv ~/pa3/holdtreasure/* ~/pa3/treasures >& ~/X ; echo Whoosh !\! && echo -e "\n" && score)'
