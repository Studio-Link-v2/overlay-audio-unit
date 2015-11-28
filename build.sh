#!/bin/bash -e

cd JUCE/extras/Introjucer/Builds/MacOSX/
xcodebuild -configuration Release
cd ../../../../../

JUCE/extras/Introjucer/Builds/MacOSX/build/Release/Introjucer.app/Contents/MacOS/Introjucer --resave StudioLink/StudioLink.jucer

cd StudioLink/Builds/MacOSX/
xcodebuild -configuration Release
cd ../../../
