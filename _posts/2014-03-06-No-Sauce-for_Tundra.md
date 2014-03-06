---
layout: post-no-feature
title: "No SAUCE for Tundra"
description: "Random wonders may occur"
category: articles
tags: [Tundra, Sauce, ANSi, ASCII, file, incompatiblity]
---

This one should be filed under the category "sad but true".

<figure>
	<img src="http://cl.ly/image/3E3G0q3X1124/zv_iniq.tnd.png">
	<figcaption>"zv-iniq.tnd" by ZeroVision, 2006</figcaption>
</figure>

SAUCE is a protocol for attaching meta data or comments to files. It has been mainly invented for ANSi art files and is a de-facto standard in the scene. Tasmaniac of ACiD recently published v00.5 of the [SAUCE specs](http://www.acid.org/info/sauce/sauce.htm). ANSi art slowly but constantly revives these days, I'm so glad to see this happening. 

Anyway. A long time after the golden era of textmode artists (in 2004 if I remember correctly), there was a vision to resurrect textmode art with a modernized editor. Intended to be cross-platform and to support 256 colors, Tundra was born. Great concept, wonderful idea and sadly one of the most exotic ANSi formats to date. Try to find the specs in the internet. I did and I was [pointed to my own](http://fileformats.archiveteam.org/wiki/TUNDRA) Tundra implementation, crazy...

I don't think that there are more than 10 original Tundra artworks out there. I have 9 test files and my buddy Fred thinks this is a pretty complete collection. And if someone knows, it's him. While debugging some Tundra issues with AnsiLove/C (that broken file in the latest Blocktronics release, you know) we also discovered that strange things happen to Tundra files with SAUCE record. Strange in the sense of getting invalid. Tundra Draw doesn't want to open the file anymore. In AnsiLove/C we are basically looking for a SAUCE record and strip that from buffer before parsing, that's why we manage to render such a file. The question is if the file is still valid. I think: if Tundra can't open it anymore it's not, but this is just my opinion and it's surely debatable. 

Conclusion? Uhm... none. You should decide for yourself (now knowing that random wonders may occur) if you want to append a SAUCE record to your Tundra artwork or not.