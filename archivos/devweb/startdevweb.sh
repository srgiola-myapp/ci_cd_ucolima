#!/bin/sh
date
if [   -d ./node_modules ]; then
  if [ !  -f ./package-lock.json ]; then    
      npm install       
  fi
fi
if [ ! -z ${BUILD} ]; then
     if [  -f  .env ]; then
        source .env
     fi
      date
      npm run build      
      serve -l 6000 -s ./build
fi
if [ ! -z ${DEV} ]; then
   date
   npm start
fi
