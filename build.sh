#!/bin/bash -e

cd JUCE/extras/Projucer/Builds/MacOSX/
xcodebuild -configuration Release
cd ../../../../../

JUCE/extras/Projucer/Builds/MacOSX/build/Release/Projucer.app/Contents/MacOS/Projucer --resave StudioLink/StudioLink.jucer

cd StudioLink/Builds/MacOSX/
xcodebuild -configuration Release -xcconfig ../../../build.xconfig
cd ../../../
