#!/bin/bash -e

#cd JUCE/extras/Projucer/Builds/MacOSX/
#xcodebuild -configuration Release
#cd ../../../../../

#JUCE/extras/Projucer/Builds/MacOSX/build/Release/Projucer.app/Contents/MacOS/Projucer --resave StudioLink/StudioLink.jucer
JUCE/Projucer.app/Contents/MacOS/Projucer --resave StudioLink/StudioLink.jucer

pushd StudioLink/Builds/MacOSX/
xcodebuild -configuration Release -xcconfig ../../../build.xconfig
popd
