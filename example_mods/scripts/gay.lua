function onCreatePost()
  addHaxeLibrary('Main');
    runHaxeCode([[
        Main.fpsVar.defaultTextFormat = new openfl.text.TextFormat("VCR OSD Mono", 18, -1);
    ]]);
end