Cloak
    by Roger Jungemann
    http://www.thefifthcircuit.com

== DESCRIPTION:

A way of managing ActionScript Sprites as Bitmaps, which are much quicker. Sprites need to be redrawn frequently. A Bitmap doesn't. Therefore, Bitmaps get much better performance.

== FEATURES/PROBLEMS:

* No known problems currently.

== SYNOPSIS:

There are two basic ways to generate new Cloaks (which are really just Bitmaps and can be used wherever a Bitmap is expected):

  Using "create" (generate Bitmap directly from a Sprite):

    import com.teamsketchy.util.Cloak;

    var s:Sprite = new Sprite();
    s.graphics.beginFill(0x000000);
    s.graphics.drawRect(0, 0, 100, 100);

    var c:Cloak = Cloak.create(100, 100, s);

    addChild(c);

  Using "sew" (generate from a function describing drawing on a Sprite):

    var c2:Cloak = Cloak.sew(100, 100, function(s:Sprite):void {
    	s.graphics.beginFill(0xff0000);					
    	s.graphics.drawRect(0, 0, 50, 50);
    });
    addChild(c2);

Once a Cloak has been created, you can "recreate" or "resew" the Cloak, using the same parameters as above.

== REQUIREMENTS:

* Flash 9 or greater.
* Flash Builder, Flash CS4, or my ActionscriptRakeTemplate project.

== INSTALL:

* Check out the code.
* Copy the "src/com" directory into the main source directory of your Flash or Flex project.
* Try one of the samples in the above synopsis.
* If you are using OS X, you can also run this project by installing Flex Builder, setting the path to a valid Flex SDK in the Rakefile, and typing in "rake" from Terminal, while in the "Cloak" directory.

== LICENSE:

(The MIT License)

Copyright (c) 2009 thefifthcircuit.

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
