// Written in the D programming language.

module fabric.rest.channel;

import vibe.web.rest;

@path("/fabric/1_0")
interface Channel
{
    @path("channels")
    string[] getAllChannels();

    @path("channels/:channelName")
    string[] getInfo(string _channelName);
}

