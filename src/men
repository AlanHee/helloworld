#!/bin/bash
# Shell script by alan.hee
# email: alan.hee@outlook.com

showHelp()
{
cat << EOF
 ${greenf}Mans on the way:
  ns                npm run start:dev
  ga				git add . && git commit -m $2
  gs      			git status
  gp  		  		git push
  ft 				flutter test
  fte  				flutter test -r expanded
  fr  		  		Flutter run
  frr				flutter run --release
  fc				Flutter clean
  fcr				flutter clean && flutter run
  u   				Unlock flutter thread
  g   				udpate flutter modules
  fu  				flutter upgrade --force
  fb  				build  flutter  model to Json
  fba 				flutter build apk
  fbi 				flutter build ios
  oios				open adc ios project
  fbb				flutter packages pub run build_runner build --delete-conflicting-outputs
  e   | android-emulator	Open android emulator
  b   | backup 			backup blog 
  c   | backup 			backup cookbook 
  s   | backup 			backup script
  h   | help			Show help
  q   | quit			Quict mans
${reset}
EOF
}

# ANSI Color -- use these variables to easily have different color
# and format output. Make sure to output the reset sequence after 
initializeANSI()
{
  esc=""

  blackf="${esc}[30m";   redf="${esc}[31m";    greenf="${esc}[32m"
  yellowf="${esc}[33m"   bluef="${esc}[34m";   purplef="${esc}[35m"
  cyanf="${esc}[36m";    whitef="${esc}[37m"
  
  blackb="${esc}[40m";   redb="${esc}[41m";    greenb="${esc}[42m"
  yellowb="${esc}[43m"   blueb="${esc}[44m";   purpleb="${esc}[45m"
  cyanb="${esc}[46m";    whiteb="${esc}[47m"

  boldon="${esc}[1m";    boldoff="${esc}[22m"
  italicson="${esc}[3m"; italicsoff="${esc}[23m"
  ulon="${esc}[4m";      uloff="${esc}[24m"
  invon="${esc}[7m";     invoff="${esc}[27m"

  reset="${esc}[0m"
}


showDone()
{
cat << EOF
${greenf}Done.${reset}
EOF
}


backup(){
cd $1
/usr/bin/git gc
/usr/bin/git add .
/usr/bin/git commit -m "Backup taken at @ $(date)"
/usr/bin/git push
}

doAction(){
  case $1
  in
    ns) npm run start:dev                                                   ;;
    gs) git status															;;
    gp) git gc && git push													;;
    quit|q) exit 0															;;
    h|help)  showHelp														;;
    g|flutter) flutter pub get												;;
	ft) flutter test           	  											;;
	fte) flutter test -r expanded $2                                        ;;
    fr)	flutter run									       					;;
    s|script) backup ~/funs													;;
    b|blog) backup ~/blog													;;
    c|cookbook) backup ~/cookbook											;;
    e|android-emulator) flutter emulators --launch Pixel_3a_API_30_x86 		;;
    u|flutter-unloack) rm ~/Documents/flutter/bin/cache/lockfile			;;
    fb) flutter packages pub run build_runner build							;;
    fba) flutter build apk													;;
    fbi) flutter build ios													;;
    fc) flutter clean														;;
    fcr) flutter clean && flutter run										;;
    fu) flutter upgrade --force												;;
    oios) open ios/Runner.xcworkspace										;;
    frr) flutter run --release												;;
    ga) git add . && git commit -m $2										;;
    fbb) flutter packages pub run build_runner build --delete-conflicting-outputs  		;;
  esac
  exit 0
}

# init fun
initializeANSI

# run the cmd weather arg provided 
# else enter CLI mode
if [ "$1" = "" ]
then
   showHelp
   while read command args
   do 
       doAction $command
   done
elif [ -n $1 ]
then
   doAction $1
fi
