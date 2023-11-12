https://sw.kovidgoyal.net/kitty/faq/#kitty-is-not-able-to-use-my-favorite-font

kitty +list-fonts
fc-list : family spacing outline scalable | grep -e spacing=100 -e spacing=90 | grep -e outline=True | grep -e scalable=True


PragmataProMonoLiga Nerd Font:

 <match target="scan">
     <test name="family">
         <string>PragmataProMonoLiga Nerd Font</string>
     </test>
     <edit name="spacing">
         <int>100</int>
     </edit>
 </match>
