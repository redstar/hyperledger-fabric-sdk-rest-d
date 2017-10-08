// Written in the D programming language.

import vibe.appmain;
import vibe.core.log;
import vibe.web.rest;

import fabric.rest.channel;

shared static this()
{
    auto channel = new RestInterfaceClient!Channel("http://127.0.0.1:3100/");
    auto channelInfo = channel.getAllChannels();
    logInfo(channelInfo[0]);
}

