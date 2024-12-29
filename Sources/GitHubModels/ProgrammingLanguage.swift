public enum ProgrammingLanguage: String, Codable, Hashable {

    public enum `Type`: String {
        case prose = "prose"
        case markup = "markup"
        case programming = "programming"
        case data = "data"
    }


    case _1cEnterprise = "1C Enterprise"
    case _2DimensionalArray = "2-Dimensional Array"
    case _4d = "4D"
    case abap = "ABAP"
    case abapCds = "ABAP CDS"
    case abnf = "ABNF"
    case agsScript = "AGS Script"
    case aidl = "AIDL"
    case al = "AL"
    case ampl = "AMPL"
    case antlr = "ANTLR"
    case apiBlueprint = "API Blueprint"
    case apl = "APL"
    case asl = "ASL"
    case asn1 = "ASN.1"
    case aspNet = "ASP.NET"
    case ats = "ATS"
    case actionscript = "ActionScript"
    case ada = "Ada"
    case adblockFilterList = "Adblock Filter List"
    case adobeFontMetrics = "Adobe Font Metrics"
    case agda = "Agda"
    case alloy = "Alloy"
    case alpineAbuild = "Alpine Abuild"
    case altiumDesigner = "Altium Designer"
    case angelscript = "AngelScript"
    case antBuildSystem = "Ant Build System"
    case antlers = "Antlers"
    case apacheconf = "ApacheConf"
    case apex = "Apex"
    case apolloGuidanceComputer = "Apollo Guidance Computer"
    case applescript = "AppleScript"
    case arc = "Arc"
    case asciidoc = "AsciiDoc"
    case aspectj = "AspectJ"
    case assembly = "Assembly"
    case astro = "Astro"
    case asymptote = "Asymptote"
    case augeas = "Augeas"
    case autohotkey = "AutoHotkey"
    case autoit = "AutoIt"
    case avroIdl = "Avro IDL"
    case awk = "Awk"
    case basic = "BASIC"
    case ballerina = "Ballerina"
    case batchfile = "Batchfile"
    case beef = "Beef"
    case befunge = "Befunge"
    case berry = "Berry"
    case bibtex = "BibTeX"
    case bicep = "Bicep"
    case bikeshed = "Bikeshed"
    case bison = "Bison"
    case bitbake = "BitBake"
    case blade = "Blade"
    case blitzbasic = "BlitzBasic"
    case blitzmax = "BlitzMax"
    case bluespec = "Bluespec"
    case boo = "Boo"
    case boogie = "Boogie"
    case brainfuck = "Brainfuck"
    case brighterscript = "BrighterScript"
    case brightscript = "Brightscript"
    case browserslist = "Browserslist"
    case c = "C"
    case csharp = "C#"
    case cpp = "C++"
    case cObjdump = "C-ObjDump"
    case c2hsHaskell = "C2hs Haskell"
    case capCds = "CAP CDS"
    case cil = "CIL"
    case clips = "CLIPS"
    case cmake = "CMake"
    case cobol = "COBOL"
    case codeowners = "CODEOWNERS"
    case collada = "COLLADA"
    case cson = "CSON"
    case css = "CSS"
    case csv = "CSV"
    case cue = "CUE"
    case cweb = "CWeb"
    case cabalConfig = "Cabal Config"
    case cadence = "Cadence"
    case cairo = "Cairo"
    case cameligo = "CameLIGO"
    case capNProto = "Cap'n Proto"
    case cartocss = "CartoCSS"
    case ceylon = "Ceylon"
    case chapel = "Chapel"
    case charity = "Charity"
    case checksums = "Checksums"
    case chuck = "ChucK"
    case circom = "Circom"
    case cirru = "Cirru"
    case clarion = "Clarion"
    case clarity = "Clarity"
    case classicAsp = "Classic ASP"
    case clean = "Clean"
    case click = "Click"
    case clojure = "Clojure"
    case closureTemplates = "Closure Templates"
    case cloudFirestoreSecurityRules = "Cloud Firestore Security Rules"
    case conllU = "CoNLL-U"
    case codeql = "CodeQL"
    case coffeescript = "CoffeeScript"
    case coldfusion = "ColdFusion"
    case coldfusionCfc = "ColdFusion CFC"
    case commonLisp = "Common Lisp"
    case commonWorkflowLanguage = "Common Workflow Language"
    case componentPascal = "Component Pascal"
    case cool = "Cool"
    case coq = "Coq"
    case cppObjdump = "Cpp-ObjDump"
    case creole = "Creole"
    case crystal = "Crystal"
    case csound = "Csound"
    case csoundDocument = "Csound Document"
    case csoundScore = "Csound Score"
    case cuda = "Cuda"
    case cueSheet = "Cue Sheet"
    case curry = "Curry"
    case cycript = "Cycript"
    case cypher = "Cypher"
    case cython = "Cython"
    case d = "D"
    case dObjdump = "D-ObjDump"
    case d2 = "D2"
    case digitalCommandLanguage = "DIGITAL Command Language"
    case dm = "DM"
    case dnsZone = "DNS Zone"
    case dtrace = "DTrace"
    case dafny = "Dafny"
    case darcsPatch = "Darcs Patch"
    case dart = "Dart"
    case dataweave = "DataWeave"
    case debianPackageControlFile = "Debian Package Control File"
    case denizenscript = "DenizenScript"
    case dhall = "Dhall"
    case diff = "Diff"
    case directx3dFile = "DirectX 3D File"
    case dockerfile = "Dockerfile"
    case dogescript = "Dogescript"
    case dotenv = "Dotenv"
    case dylan = "Dylan"
    case e = "E"
    case eMail = "E-mail"
    case ebnf = "EBNF"
    case ecl = "ECL"
    case eclipse = "ECLiPSe"
    case ejs = "EJS"
    case eq = "EQ"
    case eagle = "Eagle"
    case earthly = "Earthly"
    case easybuild = "Easybuild"
    case ecereProjects = "Ecere Projects"
    case ecmarkup = "Ecmarkup"
    case editorconfig = "EditorConfig"
    case edjeDataCollection = "Edje Data Collection"
    case eiffel = "Eiffel"
    case elixir = "Elixir"
    case elm = "Elm"
    case elvish = "Elvish"
    case elvishTranscript = "Elvish Transcript"
    case emacsLisp = "Emacs Lisp"
    case emberscript = "EmberScript"
    case erlang = "Erlang"
    case euphoria = "Euphoria"
    case fsharp = "F#"
    case f2 = "F*"
    case figletFont = "FIGlet Font"
    case flux = "FLUX"
    case factor = "Factor"
    case fancy = "Fancy"
    case fantom = "Fantom"
    case faust = "Faust"
    case fennel = "Fennel"
    case filebenchWml = "Filebench WML"
    case filterscript = "Filterscript"
    case fluent = "Fluent"
    case formatted = "Formatted"
    case forth = "Forth"
    case fortran = "Fortran"
    case fortranFreeForm = "Fortran Free Form"
    case freebasic = "FreeBasic"
    case freemarker = "FreeMarker"
    case frege = "Frege"
    case futhark = "Futhark"
    case gCode = "G-code"
    case gaml = "GAML"
    case gams = "GAMS"
    case gap = "GAP"
    case gccMachineDescription = "GCC Machine Description"
    case gdb = "GDB"
    case gdscript = "GDScript"
    case gedcom = "GEDCOM"
    case glsl = "GLSL"
    case gn = "GN"
    case gsc = "GSC"
    case gameMakerLanguage = "Game Maker Language"
    case gemfileLock = "Gemfile.lock"
    case gemini = "Gemini"
    case genero = "Genero"
    case generoForms = "Genero Forms"
    case genie = "Genie"
    case genshi = "Genshi"
    case gentooEbuild = "Gentoo Ebuild"
    case gentooEclass = "Gentoo Eclass"
    case gerberImage = "Gerber Image"
    case gettextCatalog = "Gettext Catalog"
    case gherkin = "Gherkin"
    case gitAttributes = "Git Attributes"
    case gitConfig = "Git Config"
    case gitRevisionList = "Git Revision List"
    case gleam = "Gleam"
    case glyph = "Glyph"
    case glyphBitmapDistributionFormat = "Glyph Bitmap Distribution Format"
    case gnuplot = "Gnuplot"
    case go = "Go"
    case goChecksums = "Go Checksums"
    case goModule = "Go Module"
    case goWorkspace = "Go Workspace"
    case godotResource = "Godot Resource"
    case golo = "Golo"
    case gosu = "Gosu"
    case grace = "Grace"
    case gradle = "Gradle"
    case grammaticalFramework = "Grammatical Framework"
    case graphModelingLanguage = "Graph Modeling Language"
    case graphql = "GraphQL"
    case graphvizDot = "Graphviz (DOT)"
    case groovy = "Groovy"
    case groovyServerPages = "Groovy Server Pages"
    case haproxy = "HAProxy"
    case hcl = "HCL"
    case hlsl = "HLSL"
    case hocon = "HOCON"
    case html = "HTML"
    case htmlEcr = "HTML+ECR"
    case htmlEex = "HTML+EEX"
    case htmlErb = "HTML+ERB"
    case htmlPhp = "HTML+PHP"
    case htmlRazor = "HTML+Razor"
    case http = "HTTP"
    case hxml = "HXML"
    case hack = "Hack"
    case haml = "Haml"
    case handlebars = "Handlebars"
    case harbour = "Harbour"
    case haskell = "Haskell"
    case haxe = "Haxe"
    case hiveql = "HiveQL"
    case holyc = "HolyC"
    case hostsFile = "Hosts File"
    case hy = "Hy"
    case hyphy = "HyPhy"
    case idl = "IDL"
    case igorPro = "IGOR Pro"
    case ini = "INI"
    case ircLog = "IRC log"
    case idris = "Idris"
    case ignoreList = "Ignore List"
    case imagejMacro = "ImageJ Macro"
    case imba = "Imba"
    case inform7 = "Inform 7"
    case ink = "Ink"
    case innoSetup = "Inno Setup"
    case io = "Io"
    case ioke = "Ioke"
    case isabelle = "Isabelle"
    case isabelleRoot = "Isabelle ROOT"
    case j = "J"
    case jarManifest = "JAR Manifest"
    case jcl = "JCL"
    case jflex = "JFlex"
    case json = "JSON"
    case jsonWithComments = "JSON with Comments"
    case json5 = "JSON5"
    case jsonld = "JSONLD"
    case jsoniq = "JSONiq"
    case janet = "Janet"
    case jasmin = "Jasmin"
    case java = "Java"
    case javaProperties = "Java Properties"
    case javaServerPages = "Java Server Pages"
    case javascript = "JavaScript"
    case javascriptErb = "JavaScript+ERB"
    case jestSnapshot = "Jest Snapshot"
    case jetbrainsMps = "JetBrains MPS"
    case jinja = "Jinja"
    case jison = "Jison"
    case jisonLex = "Jison Lex"
    case jolie = "Jolie"
    case jsonnet = "Jsonnet"
    case julia = "Julia"
    case jupyterNotebook = "Jupyter Notebook"
    case just = "Just"
    case krl = "KRL"
    case kaitaiStruct = "Kaitai Struct"
    case kakounescript = "KakouneScript"
    case kerboscript = "KerboScript"
    case kicadLayout = "KiCad Layout"
    case kicadLegacyLayout = "KiCad Legacy Layout"
    case kicadSchematic = "KiCad Schematic"
    case kickstart = "Kickstart"
    case kit = "Kit"
    case kotlin = "Kotlin"
    case kusto = "Kusto"
    case lfe = "LFE"
    case llvm = "LLVM"
    case lolcode = "LOLCODE"
    case lsl = "LSL"
    case ltspiceSymbol = "LTspice Symbol"
    case labview = "LabVIEW"
    case lark = "Lark"
    case lasso = "Lasso"
    case latte = "Latte"
    case lean = "Lean"
    case less = "Less"
    case lex = "Lex"
    case ligolang = "LigoLANG"
    case lilypond = "LilyPond"
    case limbo = "Limbo"
    case linkerScript = "Linker Script"
    case linuxKernelModule = "Linux Kernel Module"
    case liquid = "Liquid"
    case literateAgda = "Literate Agda"
    case literateCoffeescript = "Literate CoffeeScript"
    case literateHaskell = "Literate Haskell"
    case livescript = "LiveScript"
    case logos = "Logos"
    case logtalk = "Logtalk"
    case lookml = "LookML"
    case loomscript = "LoomScript"
    case lua = "Lua"
    case m = "M"
    case m4 = "M4"
    case m4sugar = "M4Sugar"
    case matlab = "MATLAB"
    case maxscript = "MAXScript"
    case mdx = "MDX"
    case mlir = "MLIR"
    case mql4 = "MQL4"
    case mql5 = "MQL5"
    case mtml = "MTML"
    case muf = "MUF"
    case macaulay2 = "Macaulay2"
    case makefile = "Makefile"
    case mako = "Mako"
    case markdown = "Markdown"
    case marko = "Marko"
    case mask = "Mask"
    case mathematica = "Mathematica"
    case mavenPom = "Maven POM"
    case max = "Max"
    case mercury = "Mercury"
    case mermaid = "Mermaid"
    case meson = "Meson"
    case metal = "Metal"
    case microsoftDeveloperStudioProject = "Microsoft Developer Studio Project"
    case microsoftVisualStudioSolution = "Microsoft Visual Studio Solution"
    case minid = "MiniD"
    case miniyaml = "MiniYAML"
    case mint = "Mint"
    case mirah = "Mirah"
    case modelica = "Modelica"
    case modula2 = "Modula-2"
    case modula3 = "Modula-3"
    case moduleManagementSystem = "Module Management System"
    case monkey = "Monkey"
    case monkeyC = "Monkey C"
    case moocode = "Moocode"
    case moonscript = "MoonScript"
    case motoko = "Motoko"
    case motorola68kAssembly = "Motorola 68K Assembly"
    case move = "Move"
    case muse = "Muse"
    case mustache = "Mustache"
    case myghty = "Myghty"
    case nasl = "NASL"
    case ncl = "NCL"
    case neon = "NEON"
    case nl = "NL"
    case npmConfig = "NPM Config"
    case nsis = "NSIS"
    case nwscript = "NWScript"
    case nasal = "Nasal"
    case nearley = "Nearley"
    case nemerle = "Nemerle"
    case netlinx = "NetLinx"
    case netlinxErb = "NetLinx+ERB"
    case netlogo = "NetLogo"
    case newlisp = "NewLisp"
    case nextflow = "Nextflow"
    case nginx = "Nginx"
    case nim = "Nim"
    case ninja = "Ninja"
    case nit = "Nit"
    case nix = "Nix"
    case nu = "Nu"
    case numpy = "NumPy"
    case nunjucks = "Nunjucks"
    case nushell = "Nushell"
    case oasv2Json = "OASv2-json"
    case oasv2Yaml = "OASv2-yaml"
    case oasv3Json = "OASv3-json"
    case oasv3Yaml = "OASv3-yaml"
    case ocaml = "OCaml"
    case objdump = "ObjDump"
    case objectDataInstanceNotation = "Object Data Instance Notation"
    case objectscript = "ObjectScript"
    case objectiveC = "Objective-C"
    case objectiveCpp = "Objective-C++"
    case objectiveJ = "Objective-J"
    case odin = "Odin"
    case omgrofl = "Omgrofl"
    case opa = "Opa"
    case opal = "Opal"
    case openPolicyAgent = "Open Policy Agent"
    case openapiSpecificationV2 = "OpenAPI Specification v2"
    case openapiSpecificationV3 = "OpenAPI Specification v3"
    case opencl = "OpenCL"
    case openedgeAbl = "OpenEdge ABL"
    case openqasm = "OpenQASM"
    case openrcRunscript = "OpenRC runscript"
    case openscad = "OpenSCAD"
    case openstepPropertyList = "OpenStep Property List"
    case opentypeFeatureFile = "OpenType Feature File"
    case optionList = "Option List"
    case org = "Org"
    case ox = "Ox"
    case oxygene = "Oxygene"
    case oz = "Oz"
    case p4 = "P4"
    case pddl = "PDDL"
    case pegJs = "PEG.js"
    case php = "PHP"
    case plsql = "PLSQL"
    case plpgsql = "PLpgSQL"
    case povRaySdl = "POV-Ray SDL"
    case pact = "Pact"
    case pan = "Pan"
    case papyrus = "Papyrus"
    case parrot = "Parrot"
    case parrotAssembly = "Parrot Assembly"
    case parrotInternalRepresentation = "Parrot Internal Representation"
    case pascal = "Pascal"
    case pawn = "Pawn"
    case pep8 = "Pep8"
    case perl = "Perl"
    case pic = "Pic"
    case pickle = "Pickle"
    case picolisp = "PicoLisp"
    case piglatin = "PigLatin"
    case pike = "Pike"
    case plantuml = "PlantUML"
    case pod = "Pod"
    case pod6 = "Pod 6"
    case pogoscript = "PogoScript"
    case polar = "Polar"
    case pony = "Pony"
    case portugol = "Portugol"
    case postcss = "PostCSS"
    case postscript = "PostScript"
    case powerbuilder = "PowerBuilder"
    case powershell = "PowerShell"
    case prisma = "Prisma"
    case processing = "Processing"
    case procfile = "Procfile"
    case proguard = "Proguard"
    case prolog = "Prolog"
    case promela = "Promela"
    case propellerSpin = "Propeller Spin"
    case protocolBuffer = "Protocol Buffer"
    case protocolBufferTextFormat = "Protocol Buffer Text Format"
    case publicKey = "Public Key"
    case pug = "Pug"
    case puppet = "Puppet"
    case pureData = "Pure Data"
    case purebasic = "PureBasic"
    case purescript = "PureScript"
    case pyret = "Pyret"
    case python = "Python"
    case pythonConsole = "Python console"
    case pythonTraceback = "Python traceback"
    case qsharp = "Q#"
    case qml = "QML"
    case qmake = "QMake"
    case qtScript = "Qt Script"
    case quake = "Quake"
    case r = "R"
    case raml = "RAML"
    case rbs = "RBS"
    case rdoc = "RDoc"
    case realbasic = "REALbasic"
    case rexx = "REXX"
    case rmarkdown = "RMarkdown"
    case rpc = "RPC"
    case rpgle = "RPGLE"
    case rpmSpec = "RPM Spec"
    case runoff = "RUNOFF"
    case racket = "Racket"
    case ragel = "Ragel"
    case raku = "Raku"
    case rascal = "Rascal"
    case rawTokenData = "Raw token data"
    case rescript = "ReScript"
    case readlineConfig = "Readline Config"
    case reason = "Reason"
    case reasonligo = "ReasonLIGO"
    case rebol = "Rebol"
    case recordJar = "Record Jar"
    case red = "Red"
    case redcode = "Redcode"
    case redirectRules = "Redirect Rules"
    case regularExpression = "Regular Expression"
    case renPy = "Ren'Py"
    case renderscript = "RenderScript"
    case richTextFormat = "Rich Text Format"
    case ring = "Ring"
    case riot = "Riot"
    case robotframework = "RobotFramework"
    case roff = "Roff"
    case roffManpage = "Roff Manpage"
    case rouge = "Rouge"
    case routerosScript = "RouterOS Script"
    case ruby = "Ruby"
    case rust = "Rust"
    case sas = "SAS"
    case scss = "SCSS"
    case selinuxPolicy = "SELinux Policy"
    case smt = "SMT"
    case sparql = "SPARQL"
    case sqf = "SQF"
    case sql = "SQL"
    case sqlpl = "SQLPL"
    case srecodeTemplate = "SRecode Template"
    case sshConfig = "SSH Config"
    case star = "STAR"
    case stl = "STL"
    case ston = "STON"
    case svg = "SVG"
    case swig = "SWIG"
    case sage = "Sage"
    case saltstack = "SaltStack"
    case sass = "Sass"
    case scala = "Scala"
    case scaml = "Scaml"
    case scenic = "Scenic"
    case scheme = "Scheme"
    case scilab = "Scilab"
    case `self` = "Self"
    case shaderlab = "ShaderLab"
    case shell = "Shell"
    case shellcheckConfig = "ShellCheck Config"
    case shellsession = "ShellSession"
    case shen = "Shen"
    case sieve = "Sieve"
    case simpleFileVerification = "Simple File Verification"
    case singularity = "Singularity"
    case slash = "Slash"
    case slice = "Slice"
    case slim = "Slim"
    case smpl = "SmPL"
    case smali = "Smali"
    case smalltalk = "Smalltalk"
    case smarty = "Smarty"
    case smithy = "Smithy"
    case snakemake = "Snakemake"
    case solidity = "Solidity"
    case soong = "Soong"
    case sourcepawn = "SourcePawn"
    case splineFontDatabase = "Spline Font Database"
    case squirrel = "Squirrel"
    case stan = "Stan"
    case standardMl = "Standard ML"
    case starlark = "Starlark"
    case stata = "Stata"
    case stringtemplate = "StringTemplate"
    case stylus = "Stylus"
    case subripText = "SubRip Text"
    case sugarss = "SugarSS"
    case supercollider = "SuperCollider"
    case svelte = "Svelte"
    case sway = "Sway"
    case swift = "Swift"
    case systemverilog = "SystemVerilog"
    case tiProgram = "TI Program"
    case tlVerilog = "TL-Verilog"
    case tla = "TLA"
    case toml = "TOML"
    case tsql = "TSQL"
    case tsv = "TSV"
    case tsx = "TSX"
    case txl = "TXL"
    case talon = "Talon"
    case tcl = "Tcl"
    case tcsh = "Tcsh"
    case tex = "TeX"
    case tea = "Tea"
    case terra = "Terra"
    case texinfo = "Texinfo"
    case text = "Text"
    case textmateProperties = "TextMate Properties"
    case textile = "Textile"
    case thrift = "Thrift"
    case turing = "Turing"
    case turtle = "Turtle"
    case twig = "Twig"
    case typeLanguage = "Type Language"
    case typescript = "TypeScript"
    case unifiedParallelC = "Unified Parallel C"
    case unity3dAsset = "Unity3D Asset"
    case unixAssembly = "Unix Assembly"
    case uno = "Uno"
    case unrealscript = "UnrealScript"
    case urweb = "UrWeb"
    case v = "V"
    case vba = "VBA"
    case vbscript = "VBScript"
    case vcl = "VCL"
    case vhdl = "VHDL"
    case vala = "Vala"
    case valveDataFormat = "Valve Data Format"
    case velocityTemplateLanguage = "Velocity Template Language"
    case verilog = "Verilog"
    case vimHelpFile = "Vim Help File"
    case vimScript = "Vim Script"
    case vimSnippet = "Vim Snippet"
    case visualBasicNet = "Visual Basic .NET"
    case visualBasic60 = "Visual Basic 6.0"
    case volt = "Volt"
    case vue = "Vue"
    case vyper = "Vyper"
    case wdl = "WDL"
    case wgsl = "WGSL"
    case wavefrontMaterial = "Wavefront Material"
    case wavefrontObject = "Wavefront Object"
    case webOntologyLanguage = "Web Ontology Language"
    case webassembly = "WebAssembly"
    case webassemblyInterfaceType = "WebAssembly Interface Type"
    case webidl = "WebIDL"
    case webvtt = "WebVTT"
    case wgetConfig = "Wget Config"
    case whiley = "Whiley"
    case wikitext = "Wikitext"
    case win32MessageFile = "Win32 Message File"
    case windowsRegistryEntries = "Windows Registry Entries"
    case witcherScript = "Witcher Script"
    case wollok = "Wollok"
    case worldOfWarcraftAddonData = "World of Warcraft Addon Data"
    case wren = "Wren"
    case xBitmap = "X BitMap"
    case xFontDirectoryIndex = "X Font Directory Index"
    case xPixmap = "X PixMap"
    case x10 = "X10"
    case xc = "XC"
    case xcompose = "XCompose"
    case xml = "XML"
    case xmlPropertyList = "XML Property List"
    case xpages = "XPages"
    case xproc = "XProc"
    case xquery = "XQuery"
    case xs = "XS"
    case xslt = "XSLT"
    case xojo = "Xojo"
    case xonsh = "Xonsh"
    case xtend = "Xtend"
    case yaml = "YAML"
    case yang = "YANG"
    case yara = "YARA"
    case yasnippet = "YASnippet"
    case yacc = "Yacc"
    case yul = "Yul"
    case zap = "ZAP"
    case zil = "ZIL"
    case zeek = "Zeek"
    case zenscript = "ZenScript"
    case zephir = "Zephir"
    case zig = "Zig"
    case zimpl = "Zimpl"
    case curlConfig = "cURL Config"
    case desktop = "desktop"
    case dircolors = "dircolors"
    case ec = "eC"
    case edn = "edn"
    case fish = "fish"
    case hoon = "hoon"
    case jq = "jq"
    case kvlang = "kvlang"
    case mircScript = "mIRC Script"
    case mcfunction = "mcfunction"
    case mupad = "mupad"
    case nanorc = "nanorc"
    case nesc = "nesC"
    case ooc = "ooc"
    case q = "q"
    case restructuredtext = "reStructuredText"
    case robotsTxt = "robots.txt"
    case sed = "sed"
    case wisp = "wisp"
    case xbase = "xBase"


    public var type: `Type` {
        switch self {
        case ._1cEnterprise:
            return .programming
        case ._2DimensionalArray:
            return .data
        case ._4d:
            return .programming
        case .abap:
            return .programming
        case .abapCds:
            return .programming
        case .abnf:
            return .data
        case .agsScript:
            return .programming
        case .aidl:
            return .programming
        case .al:
            return .programming
        case .ampl:
            return .programming
        case .antlr:
            return .programming
        case .apiBlueprint:
            return .markup
        case .apl:
            return .programming
        case .asl:
            return .programming
        case .asn1:
            return .data
        case .aspNet:
            return .programming
        case .ats:
            return .programming
        case .actionscript:
            return .programming
        case .ada:
            return .programming
        case .adblockFilterList:
            return .data
        case .adobeFontMetrics:
            return .data
        case .agda:
            return .programming
        case .alloy:
            return .programming
        case .alpineAbuild:
            return .programming
        case .altiumDesigner:
            return .data
        case .angelscript:
            return .programming
        case .antBuildSystem:
            return .data
        case .antlers:
            return .markup
        case .apacheconf:
            return .data
        case .apex:
            return .programming
        case .apolloGuidanceComputer:
            return .programming
        case .applescript:
            return .programming
        case .arc:
            return .programming
        case .asciidoc:
            return .prose
        case .aspectj:
            return .programming
        case .assembly:
            return .programming
        case .astro:
            return .markup
        case .asymptote:
            return .programming
        case .augeas:
            return .programming
        case .autohotkey:
            return .programming
        case .autoit:
            return .programming
        case .avroIdl:
            return .data
        case .awk:
            return .programming
        case .basic:
            return .programming
        case .ballerina:
            return .programming
        case .batchfile:
            return .programming
        case .beef:
            return .programming
        case .befunge:
            return .programming
        case .berry:
            return .programming
        case .bibtex:
            return .markup
        case .bicep:
            return .programming
        case .bikeshed:
            return .markup
        case .bison:
            return .programming
        case .bitbake:
            return .programming
        case .blade:
            return .markup
        case .blitzbasic:
            return .programming
        case .blitzmax:
            return .programming
        case .bluespec:
            return .programming
        case .boo:
            return .programming
        case .boogie:
            return .programming
        case .brainfuck:
            return .programming
        case .brighterscript:
            return .programming
        case .brightscript:
            return .programming
        case .browserslist:
            return .data
        case .c:
            return .programming
        case .csharp:
            return .programming
        case .cpp:
            return .programming
        case .cObjdump:
            return .data
        case .c2hsHaskell:
            return .programming
        case .capCds:
            return .programming
        case .cil:
            return .data
        case .clips:
            return .programming
        case .cmake:
            return .programming
        case .cobol:
            return .programming
        case .codeowners:
            return .data
        case .collada:
            return .data
        case .cson:
            return .data
        case .css:
            return .markup
        case .csv:
            return .data
        case .cue:
            return .programming
        case .cweb:
            return .programming
        case .cabalConfig:
            return .data
        case .cadence:
            return .programming
        case .cairo:
            return .programming
        case .cameligo:
            return .programming
        case .capNProto:
            return .programming
        case .cartocss:
            return .programming
        case .ceylon:
            return .programming
        case .chapel:
            return .programming
        case .charity:
            return .programming
        case .checksums:
            return .data
        case .chuck:
            return .programming
        case .circom:
            return .programming
        case .cirru:
            return .programming
        case .clarion:
            return .programming
        case .clarity:
            return .programming
        case .classicAsp:
            return .programming
        case .clean:
            return .programming
        case .click:
            return .programming
        case .clojure:
            return .programming
        case .closureTemplates:
            return .markup
        case .cloudFirestoreSecurityRules:
            return .data
        case .conllU:
            return .data
        case .codeql:
            return .programming
        case .coffeescript:
            return .programming
        case .coldfusion:
            return .programming
        case .coldfusionCfc:
            return .programming
        case .commonLisp:
            return .programming
        case .commonWorkflowLanguage:
            return .programming
        case .componentPascal:
            return .programming
        case .cool:
            return .programming
        case .coq:
            return .programming
        case .cppObjdump:
            return .data
        case .creole:
            return .prose
        case .crystal:
            return .programming
        case .csound:
            return .programming
        case .csoundDocument:
            return .programming
        case .csoundScore:
            return .programming
        case .cuda:
            return .programming
        case .cueSheet:
            return .data
        case .curry:
            return .programming
        case .cycript:
            return .programming
        case .cypher:
            return .programming
        case .cython:
            return .programming
        case .d:
            return .programming
        case .dObjdump:
            return .data
        case .d2:
            return .markup
        case .digitalCommandLanguage:
            return .programming
        case .dm:
            return .programming
        case .dnsZone:
            return .data
        case .dtrace:
            return .programming
        case .dafny:
            return .programming
        case .darcsPatch:
            return .data
        case .dart:
            return .programming
        case .dataweave:
            return .programming
        case .debianPackageControlFile:
            return .data
        case .denizenscript:
            return .programming
        case .dhall:
            return .programming
        case .diff:
            return .data
        case .directx3dFile:
            return .data
        case .dockerfile:
            return .programming
        case .dogescript:
            return .programming
        case .dotenv:
            return .data
        case .dylan:
            return .programming
        case .e:
            return .programming
        case .eMail:
            return .data
        case .ebnf:
            return .data
        case .ecl:
            return .programming
        case .eclipse:
            return .programming
        case .ejs:
            return .markup
        case .eq:
            return .programming
        case .eagle:
            return .data
        case .earthly:
            return .programming
        case .easybuild:
            return .data
        case .ecereProjects:
            return .data
        case .ecmarkup:
            return .markup
        case .editorconfig:
            return .data
        case .edjeDataCollection:
            return .data
        case .eiffel:
            return .programming
        case .elixir:
            return .programming
        case .elm:
            return .programming
        case .elvish:
            return .programming
        case .elvishTranscript:
            return .programming
        case .emacsLisp:
            return .programming
        case .emberscript:
            return .programming
        case .erlang:
            return .programming
        case .euphoria:
            return .programming
        case .fsharp:
            return .programming
        case .f2:
            return .programming
        case .figletFont:
            return .data
        case .flux:
            return .programming
        case .factor:
            return .programming
        case .fancy:
            return .programming
        case .fantom:
            return .programming
        case .faust:
            return .programming
        case .fennel:
            return .programming
        case .filebenchWml:
            return .programming
        case .filterscript:
            return .programming
        case .fluent:
            return .programming
        case .formatted:
            return .data
        case .forth:
            return .programming
        case .fortran:
            return .programming
        case .fortranFreeForm:
            return .programming
        case .freebasic:
            return .programming
        case .freemarker:
            return .programming
        case .frege:
            return .programming
        case .futhark:
            return .programming
        case .gCode:
            return .programming
        case .gaml:
            return .programming
        case .gams:
            return .programming
        case .gap:
            return .programming
        case .gccMachineDescription:
            return .programming
        case .gdb:
            return .programming
        case .gdscript:
            return .programming
        case .gedcom:
            return .data
        case .glsl:
            return .programming
        case .gn:
            return .data
        case .gsc:
            return .programming
        case .gameMakerLanguage:
            return .programming
        case .gemfileLock:
            return .data
        case .gemini:
            return .prose
        case .genero:
            return .programming
        case .generoForms:
            return .markup
        case .genie:
            return .programming
        case .genshi:
            return .programming
        case .gentooEbuild:
            return .programming
        case .gentooEclass:
            return .programming
        case .gerberImage:
            return .data
        case .gettextCatalog:
            return .prose
        case .gherkin:
            return .programming
        case .gitAttributes:
            return .data
        case .gitConfig:
            return .data
        case .gitRevisionList:
            return .data
        case .gleam:
            return .programming
        case .glyph:
            return .programming
        case .glyphBitmapDistributionFormat:
            return .data
        case .gnuplot:
            return .programming
        case .go:
            return .programming
        case .goChecksums:
            return .data
        case .goModule:
            return .data
        case .goWorkspace:
            return .data
        case .godotResource:
            return .data
        case .golo:
            return .programming
        case .gosu:
            return .programming
        case .grace:
            return .programming
        case .gradle:
            return .data
        case .grammaticalFramework:
            return .programming
        case .graphModelingLanguage:
            return .data
        case .graphql:
            return .data
        case .graphvizDot:
            return .data
        case .groovy:
            return .programming
        case .groovyServerPages:
            return .programming
        case .haproxy:
            return .data
        case .hcl:
            return .programming
        case .hlsl:
            return .programming
        case .hocon:
            return .data
        case .html:
            return .markup
        case .htmlEcr:
            return .markup
        case .htmlEex:
            return .markup
        case .htmlErb:
            return .markup
        case .htmlPhp:
            return .markup
        case .htmlRazor:
            return .markup
        case .http:
            return .data
        case .hxml:
            return .data
        case .hack:
            return .programming
        case .haml:
            return .markup
        case .handlebars:
            return .markup
        case .harbour:
            return .programming
        case .haskell:
            return .programming
        case .haxe:
            return .programming
        case .hiveql:
            return .programming
        case .holyc:
            return .programming
        case .hostsFile:
            return .data
        case .hy:
            return .programming
        case .hyphy:
            return .programming
        case .idl:
            return .programming
        case .igorPro:
            return .programming
        case .ini:
            return .data
        case .ircLog:
            return .data
        case .idris:
            return .programming
        case .ignoreList:
            return .data
        case .imagejMacro:
            return .programming
        case .imba:
            return .programming
        case .inform7:
            return .programming
        case .ink:
            return .programming
        case .innoSetup:
            return .programming
        case .io:
            return .programming
        case .ioke:
            return .programming
        case .isabelle:
            return .programming
        case .isabelleRoot:
            return .programming
        case .j:
            return .programming
        case .jarManifest:
            return .data
        case .jcl:
            return .programming
        case .jflex:
            return .programming
        case .json:
            return .data
        case .jsonWithComments:
            return .data
        case .json5:
            return .data
        case .jsonld:
            return .data
        case .jsoniq:
            return .programming
        case .janet:
            return .programming
        case .jasmin:
            return .programming
        case .java:
            return .programming
        case .javaProperties:
            return .data
        case .javaServerPages:
            return .programming
        case .javascript:
            return .programming
        case .javascriptErb:
            return .programming
        case .jestSnapshot:
            return .data
        case .jetbrainsMps:
            return .programming
        case .jinja:
            return .markup
        case .jison:
            return .programming
        case .jisonLex:
            return .programming
        case .jolie:
            return .programming
        case .jsonnet:
            return .programming
        case .julia:
            return .programming
        case .jupyterNotebook:
            return .markup
        case .just:
            return .programming
        case .krl:
            return .programming
        case .kaitaiStruct:
            return .programming
        case .kakounescript:
            return .programming
        case .kerboscript:
            return .programming
        case .kicadLayout:
            return .data
        case .kicadLegacyLayout:
            return .data
        case .kicadSchematic:
            return .data
        case .kickstart:
            return .data
        case .kit:
            return .markup
        case .kotlin:
            return .programming
        case .kusto:
            return .data
        case .lfe:
            return .programming
        case .llvm:
            return .programming
        case .lolcode:
            return .programming
        case .lsl:
            return .programming
        case .ltspiceSymbol:
            return .data
        case .labview:
            return .programming
        case .lark:
            return .data
        case .lasso:
            return .programming
        case .latte:
            return .markup
        case .lean:
            return .programming
        case .less:
            return .markup
        case .lex:
            return .programming
        case .ligolang:
            return .programming
        case .lilypond:
            return .programming
        case .limbo:
            return .programming
        case .linkerScript:
            return .data
        case .linuxKernelModule:
            return .data
        case .liquid:
            return .markup
        case .literateAgda:
            return .programming
        case .literateCoffeescript:
            return .programming
        case .literateHaskell:
            return .programming
        case .livescript:
            return .programming
        case .logos:
            return .programming
        case .logtalk:
            return .programming
        case .lookml:
            return .programming
        case .loomscript:
            return .programming
        case .lua:
            return .programming
        case .m:
            return .programming
        case .m4:
            return .programming
        case .m4sugar:
            return .programming
        case .matlab:
            return .programming
        case .maxscript:
            return .programming
        case .mdx:
            return .markup
        case .mlir:
            return .programming
        case .mql4:
            return .programming
        case .mql5:
            return .programming
        case .mtml:
            return .markup
        case .muf:
            return .programming
        case .macaulay2:
            return .programming
        case .makefile:
            return .programming
        case .mako:
            return .programming
        case .markdown:
            return .prose
        case .marko:
            return .markup
        case .mask:
            return .markup
        case .mathematica:
            return .programming
        case .mavenPom:
            return .data
        case .max:
            return .programming
        case .mercury:
            return .programming
        case .mermaid:
            return .markup
        case .meson:
            return .programming
        case .metal:
            return .programming
        case .microsoftDeveloperStudioProject:
            return .data
        case .microsoftVisualStudioSolution:
            return .data
        case .minid:
            return .programming
        case .miniyaml:
            return .data
        case .mint:
            return .programming
        case .mirah:
            return .programming
        case .modelica:
            return .programming
        case .modula2:
            return .programming
        case .modula3:
            return .programming
        case .moduleManagementSystem:
            return .programming
        case .monkey:
            return .programming
        case .monkeyC:
            return .programming
        case .moocode:
            return .programming
        case .moonscript:
            return .programming
        case .motoko:
            return .programming
        case .motorola68kAssembly:
            return .programming
        case .move:
            return .programming
        case .muse:
            return .prose
        case .mustache:
            return .markup
        case .myghty:
            return .programming
        case .nasl:
            return .programming
        case .ncl:
            return .programming
        case .neon:
            return .data
        case .nl:
            return .data
        case .npmConfig:
            return .data
        case .nsis:
            return .programming
        case .nwscript:
            return .programming
        case .nasal:
            return .programming
        case .nearley:
            return .programming
        case .nemerle:
            return .programming
        case .netlinx:
            return .programming
        case .netlinxErb:
            return .programming
        case .netlogo:
            return .programming
        case .newlisp:
            return .programming
        case .nextflow:
            return .programming
        case .nginx:
            return .data
        case .nim:
            return .programming
        case .ninja:
            return .data
        case .nit:
            return .programming
        case .nix:
            return .programming
        case .nu:
            return .programming
        case .numpy:
            return .programming
        case .nunjucks:
            return .markup
        case .nushell:
            return .programming
        case .oasv2Json:
            return .data
        case .oasv2Yaml:
            return .data
        case .oasv3Json:
            return .data
        case .oasv3Yaml:
            return .data
        case .ocaml:
            return .programming
        case .objdump:
            return .data
        case .objectDataInstanceNotation:
            return .data
        case .objectscript:
            return .programming
        case .objectiveC:
            return .programming
        case .objectiveCpp:
            return .programming
        case .objectiveJ:
            return .programming
        case .odin:
            return .programming
        case .omgrofl:
            return .programming
        case .opa:
            return .programming
        case .opal:
            return .programming
        case .openPolicyAgent:
            return .programming
        case .openapiSpecificationV2:
            return .data
        case .openapiSpecificationV3:
            return .data
        case .opencl:
            return .programming
        case .openedgeAbl:
            return .programming
        case .openqasm:
            return .programming
        case .openrcRunscript:
            return .programming
        case .openscad:
            return .programming
        case .openstepPropertyList:
            return .data
        case .opentypeFeatureFile:
            return .data
        case .optionList:
            return .data
        case .org:
            return .prose
        case .ox:
            return .programming
        case .oxygene:
            return .programming
        case .oz:
            return .programming
        case .p4:
            return .programming
        case .pddl:
            return .programming
        case .pegJs:
            return .programming
        case .php:
            return .programming
        case .plsql:
            return .programming
        case .plpgsql:
            return .programming
        case .povRaySdl:
            return .programming
        case .pact:
            return .programming
        case .pan:
            return .programming
        case .papyrus:
            return .programming
        case .parrot:
            return .programming
        case .parrotAssembly:
            return .programming
        case .parrotInternalRepresentation:
            return .programming
        case .pascal:
            return .programming
        case .pawn:
            return .programming
        case .pep8:
            return .programming
        case .perl:
            return .programming
        case .pic:
            return .markup
        case .pickle:
            return .data
        case .picolisp:
            return .programming
        case .piglatin:
            return .programming
        case .pike:
            return .programming
        case .plantuml:
            return .data
        case .pod:
            return .prose
        case .pod6:
            return .prose
        case .pogoscript:
            return .programming
        case .polar:
            return .programming
        case .pony:
            return .programming
        case .portugol:
            return .programming
        case .postcss:
            return .markup
        case .postscript:
            return .markup
        case .powerbuilder:
            return .programming
        case .powershell:
            return .programming
        case .prisma:
            return .data
        case .processing:
            return .programming
        case .procfile:
            return .programming
        case .proguard:
            return .data
        case .prolog:
            return .programming
        case .promela:
            return .programming
        case .propellerSpin:
            return .programming
        case .protocolBuffer:
            return .data
        case .protocolBufferTextFormat:
            return .data
        case .publicKey:
            return .data
        case .pug:
            return .markup
        case .puppet:
            return .programming
        case .pureData:
            return .data
        case .purebasic:
            return .programming
        case .purescript:
            return .programming
        case .pyret:
            return .programming
        case .python:
            return .programming
        case .pythonConsole:
            return .programming
        case .pythonTraceback:
            return .data
        case .q:
            return .programming
        case .qml:
            return .programming
        case .qmake:
            return .programming
        case .qtScript:
            return .programming
        case .quake:
            return .programming
        case .r:
            return .programming
        case .raml:
            return .markup
        case .rbs:
            return .data
        case .rdoc:
            return .prose
        case .realbasic:
            return .programming
        case .rexx:
            return .programming
        case .rmarkdown:
            return .prose
        case .rpc:
            return .programming
        case .rpgle:
            return .programming
        case .rpmSpec:
            return .data
        case .runoff:
            return .markup
        case .racket:
            return .programming
        case .ragel:
            return .programming
        case .raku:
            return .programming
        case .rascal:
            return .programming
        case .rawTokenData:
            return .data
        case .rescript:
            return .programming
        case .readlineConfig:
            return .data
        case .reason:
            return .programming
        case .reasonligo:
            return .programming
        case .rebol:
            return .programming
        case .recordJar:
            return .data
        case .red:
            return .programming
        case .redcode:
            return .programming
        case .redirectRules:
            return .data
        case .regularExpression:
            return .data
        case .renPy:
            return .programming
        case .renderscript:
            return .programming
        case .richTextFormat:
            return .markup
        case .ring:
            return .programming
        case .riot:
            return .markup
        case .robotframework:
            return .programming
        case .roff:
            return .markup
        case .roffManpage:
            return .markup
        case .rouge:
            return .programming
        case .routerosScript:
            return .programming
        case .ruby:
            return .programming
        case .rust:
            return .programming
        case .sas:
            return .programming
        case .scss:
            return .markup
        case .selinuxPolicy:
            return .data
        case .smt:
            return .programming
        case .sparql:
            return .data
        case .sqf:
            return .programming
        case .sql:
            return .data
        case .sqlpl:
            return .programming
        case .srecodeTemplate:
            return .markup
        case .sshConfig:
            return .data
        case .star:
            return .data
        case .stl:
            return .data
        case .ston:
            return .data
        case .svg:
            return .data
        case .swig:
            return .programming
        case .sage:
            return .programming
        case .saltstack:
            return .programming
        case .sass:
            return .markup
        case .scala:
            return .programming
        case .scaml:
            return .markup
        case .scenic:
            return .programming
        case .scheme:
            return .programming
        case .scilab:
            return .programming
        case .self:
            return .programming
        case .shaderlab:
            return .programming
        case .shell:
            return .programming
        case .shellcheckConfig:
            return .data
        case .shellsession:
            return .programming
        case .shen:
            return .programming
        case .sieve:
            return .programming
        case .simpleFileVerification:
            return .data
        case .singularity:
            return .programming
        case .slash:
            return .programming
        case .slice:
            return .programming
        case .slim:
            return .markup
        case .smpl:
            return .programming
        case .smali:
            return .programming
        case .smalltalk:
            return .programming
        case .smarty:
            return .programming
        case .smithy:
            return .programming
        case .snakemake:
            return .programming
        case .solidity:
            return .programming
        case .soong:
            return .data
        case .sourcepawn:
            return .programming
        case .splineFontDatabase:
            return .data
        case .squirrel:
            return .programming
        case .stan:
            return .programming
        case .standardMl:
            return .programming
        case .starlark:
            return .programming
        case .stata:
            return .programming
        case .stringtemplate:
            return .markup
        case .stylus:
            return .markup
        case .subripText:
            return .data
        case .sugarss:
            return .markup
        case .supercollider:
            return .programming
        case .svelte:
            return .markup
        case .sway:
            return .programming
        case .swift:
            return .programming
        case .systemverilog:
            return .programming
        case .tiProgram:
            return .programming
        case .tlVerilog:
            return .programming
        case .tla:
            return .programming
        case .toml:
            return .data
        case .tsql:
            return .programming
        case .tsv:
            return .data
        case .tsx:
            return .programming
        case .txl:
            return .programming
        case .talon:
            return .programming
        case .tcl:
            return .programming
        case .tcsh:
            return .programming
        case .tex:
            return .markup
        case .tea:
            return .markup
        case .terra:
            return .programming
        case .texinfo:
            return .prose
        case .text:
            return .prose
        case .textmateProperties:
            return .data
        case .textile:
            return .prose
        case .thrift:
            return .programming
        case .turing:
            return .programming
        case .turtle:
            return .data
        case .twig:
            return .markup
        case .typeLanguage:
            return .data
        case .typescript:
            return .programming
        case .unifiedParallelC:
            return .programming
        case .unity3dAsset:
            return .data
        case .unixAssembly:
            return .programming
        case .uno:
            return .programming
        case .unrealscript:
            return .programming
        case .urweb:
            return .programming
        case .v:
            return .programming
        case .vba:
            return .programming
        case .vbscript:
            return .programming
        case .vcl:
            return .programming
        case .vhdl:
            return .programming
        case .vala:
            return .programming
        case .valveDataFormat:
            return .data
        case .velocityTemplateLanguage:
            return .markup
        case .verilog:
            return .programming
        case .vimHelpFile:
            return .prose
        case .vimScript:
            return .programming
        case .vimSnippet:
            return .markup
        case .visualBasicNet:
            return .programming
        case .visualBasic60:
            return .programming
        case .volt:
            return .programming
        case .vue:
            return .markup
        case .vyper:
            return .programming
        case .wdl:
            return .programming
        case .wgsl:
            return .programming
        case .wavefrontMaterial:
            return .data
        case .wavefrontObject:
            return .data
        case .webOntologyLanguage:
            return .data
        case .webassembly:
            return .programming
        case .webassemblyInterfaceType:
            return .data
        case .webidl:
            return .programming
        case .webvtt:
            return .data
        case .wgetConfig:
            return .data
        case .whiley:
            return .programming
        case .wikitext:
            return .prose
        case .win32MessageFile:
            return .data
        case .windowsRegistryEntries:
            return .data
        case .witcherScript:
            return .programming
        case .wollok:
            return .programming
        case .worldOfWarcraftAddonData:
            return .data
        case .wren:
            return .programming
        case .xBitmap:
            return .data
        case .xFontDirectoryIndex:
            return .data
        case .xPixmap:
            return .data
        case .x10:
            return .programming
        case .xc:
            return .programming
        case .xcompose:
            return .data
        case .xml:
            return .data
        case .xmlPropertyList:
            return .data
        case .xpages:
            return .data
        case .xproc:
            return .programming
        case .xquery:
            return .programming
        case .xs:
            return .programming
        case .xslt:
            return .programming
        case .xojo:
            return .programming
        case .xonsh:
            return .programming
        case .xtend:
            return .programming
        case .yaml:
            return .data
        case .yang:
            return .data
        case .yara:
            return .programming
        case .yasnippet:
            return .markup
        case .yacc:
            return .programming
        case .yul:
            return .programming
        case .zap:
            return .programming
        case .zil:
            return .programming
        case .zeek:
            return .programming
        case .zenscript:
            return .programming
        case .zephir:
            return .programming
        case .zig:
            return .programming
        case .zimpl:
            return .programming
        case .curlConfig:
            return .data
        case .desktop:
            return .data
        case .dircolors:
            return .data
        case .ec:
            return .programming
        case .edn:
            return .data
        case .fish:
            return .programming
        case .hoon:
            return .programming
        case .jq:
            return .programming
        case .kvlang:
            return .markup
        case .mircScript:
            return .programming
        case .mcfunction:
            return .programming
        case .mupad:
            return .programming
        case .nanorc:
            return .data
        case .nesc:
            return .programming
        case .ooc:
            return .programming
        case .qsharp:
            return .programming
        case .restructuredtext:
            return .prose
        case .robotsTxt:
            return .data
        case .sed:
            return .programming
        case .wisp:
            return .programming
        case .xbase:
            return .programming
        }
    }

    public var color: String? {
        switch self {
        case ._1cEnterprise:
            return "#814CCC"
        case ._2DimensionalArray:
            return "#38761D"
        case ._4d:
            return "#004289"
        case .abap:
            return "#E8274B"
        case .abapCds:
            return "#555E25"
        case .agsScript:
            return "#B9D9FF"
        case .aidl:
            return "#34EB6B"
        case .al:
            return "#3AA2B5"
        case .ampl:
            return "#E6EFBB"
        case .antlr:
            return "#9DC3FF"
        case .apiBlueprint:
            return "#2ACCA8"
        case .apl:
            return "#5A8164"
        case .aspNet:
            return "#9400FF"
        case .ats:
            return "#1AC620"
        case .actionscript:
            return "#882B0F"
        case .ada:
            return "#02F88C"
        case .adblockFilterList:
            return "#800000"
        case .adobeFontMetrics:
            return "#FA0F00"
        case .agda:
            return "#315665"
        case .alloy:
            return "#64C800"
        case .alpineAbuild:
            return "#0D597F"
        case .altiumDesigner:
            return "#A89663"
        case .angelscript:
            return "#C7D7DC"
        case .antBuildSystem:
            return "#A9157E"
        case .antlers:
            return "#FF269E"
        case .apacheconf:
            return "#D12127"
        case .apex:
            return "#1797C0"
        case .apolloGuidanceComputer:
            return "#0B3D91"
        case .applescript:
            return "#101F1F"
        case .arc:
            return "#AA2AFE"
        case .asciidoc:
            return "#73A0C5"
        case .aspectj:
            return "#A957B0"
        case .assembly:
            return "#6E4C13"
        case .astro:
            return "#FF5A03"
        case .asymptote:
            return "#FF0000"
        case .augeas:
            return "#9CC134"
        case .autohotkey:
            return "#6594B9"
        case .autoit:
            return "#1C3552"
        case .avroIdl:
            return "#0040FF"
        case .awk:
            return "#C30E9B"
        case .basic:
            return "#FF0000"
        case .ballerina:
            return "#FF5000"
        case .batchfile:
            return "#C1F12E"
        case .beef:
            return "#A52F4E"
        case .berry:
            return "#15A13C"
        case .bibtex:
            return "#778899"
        case .bicep:
            return "#519ABA"
        case .bikeshed:
            return "#5562AC"
        case .bison:
            return "#6A463F"
        case .bitbake:
            return "#00BCE4"
        case .blade:
            return "#F7523F"
        case .blitzbasic:
            return "#00FFAE"
        case .blitzmax:
            return "#CD6400"
        case .bluespec:
            return "#12223C"
        case .boo:
            return "#D4BEC1"
        case .boogie:
            return "#C80FA0"
        case .brainfuck:
            return "#2F2530"
        case .brighterscript:
            return "#66AABB"
        case .brightscript:
            return "#662D91"
        case .browserslist:
            return "#FFD539"
        case .c:
            return "#555555"
        case .csharp:
            return "#178600"
        case .cpp:
            return "#F34B7D"
        case .capCds:
            return "#0092D1"
        case .clips:
            return "#00A300"
        case .cmake:
            return "#DA3434"
        case .collada:
            return "#F1A42B"
        case .cson:
            return "#244776"
        case .css:
            return "#563D7C"
        case .csv:
            return "#237346"
        case .cue:
            return "#5886E1"
        case .cweb:
            return "#00007A"
        case .cabalConfig:
            return "#483465"
        case .cadence:
            return "#00EF8B"
        case .cairo:
            return "#FF4A48"
        case .cameligo:
            return "#3BE133"
        case .capNProto:
            return "#C42727"
        case .ceylon:
            return "#DFA535"
        case .chapel:
            return "#8DC63F"
        case .chuck:
            return "#3F8000"
        case .circom:
            return "#707575"
        case .cirru:
            return "#CCCCFF"
        case .clarion:
            return "#DB901E"
        case .clarity:
            return "#5546FF"
        case .classicAsp:
            return "#6A40FD"
        case .clean:
            return "#3F85AF"
        case .click:
            return "#E4E6F3"
        case .clojure:
            return "#DB5855"
        case .closureTemplates:
            return "#0D948F"
        case .cloudFirestoreSecurityRules:
            return "#FFA000"
        case .codeql:
            return "#140F46"
        case .coffeescript:
            return "#244776"
        case .coldfusion:
            return "#ED2CD6"
        case .coldfusionCfc:
            return "#ED2CD6"
        case .commonLisp:
            return "#3FB68B"
        case .commonWorkflowLanguage:
            return "#B5314C"
        case .componentPascal:
            return "#B0CE4E"
        case .coq:
            return "#D0B68C"
        case .crystal:
            return "#000100"
        case .csound:
            return "#1A1A1A"
        case .csoundDocument:
            return "#1A1A1A"
        case .csoundScore:
            return "#1A1A1A"
        case .cuda:
            return "#3A4E3A"
        case .curry:
            return "#531242"
        case .cypher:
            return "#34C0EB"
        case .cython:
            return "#FEDF5B"
        case .d:
            return "#BA595E"
        case .d2:
            return "#526EE8"
        case .dm:
            return "#447265"
        case .dafny:
            return "#FFEC25"
        case .darcsPatch:
            return "#8EFF23"
        case .dart:
            return "#00B4AB"
        case .dataweave:
            return "#003A52"
        case .debianPackageControlFile:
            return "#D70751"
        case .denizenscript:
            return "#FBEE96"
        case .dhall:
            return "#DFAFFF"
        case .directx3dFile:
            return "#AACE60"
        case .dockerfile:
            return "#384D54"
        case .dogescript:
            return "#CCA760"
        case .dotenv:
            return "#E5D559"
        case .dylan:
            return "#6C616E"
        case .e:
            return "#CCCE35"
        case .ecl:
            return "#8A1267"
        case .eclipse:
            return "#001D9D"
        case .ejs:
            return "#A91E50"
        case .eq:
            return "#A78649"
        case .earthly:
            return "#2AF0FF"
        case .easybuild:
            return "#069406"
        case .ecereProjects:
            return "#913960"
        case .ecmarkup:
            return "#EB8131"
        case .editorconfig:
            return "#FFF1F2"
        case .eiffel:
            return "#4D6977"
        case .elixir:
            return "#6E4A7E"
        case .elm:
            return "#60B5CC"
        case .elvish:
            return "#55BB55"
        case .elvishTranscript:
            return "#55BB55"
        case .emacsLisp:
            return "#C065DB"
        case .emberscript:
            return "#FFF4F3"
        case .erlang:
            return "#B83998"
        case .euphoria:
            return "#FF790B"
        case .fsharp:
            return "#B845FC"
        case .f2:
            return "#572E30"
        case .figletFont:
            return "#FFDDBB"
        case .flux:
            return "#88CCFF"
        case .factor:
            return "#636746"
        case .fancy:
            return "#7B9DB4"
        case .fantom:
            return "#14253C"
        case .faust:
            return "#C37240"
        case .fennel:
            return "#FFF3D7"
        case .filebenchWml:
            return "#F6B900"
        case .fluent:
            return "#FFCC33"
        case .forth:
            return "#341708"
        case .fortran:
            return "#4D41B1"
        case .fortranFreeForm:
            return "#4D41B1"
        case .freebasic:
            return "#141AC9"
        case .freemarker:
            return "#0050B2"
        case .frege:
            return "#00CAFE"
        case .futhark:
            return "#5F021F"
        case .gCode:
            return "#D08CF2"
        case .gaml:
            return "#FFC766"
        case .gams:
            return "#F49A22"
        case .gap:
            return "#0000CC"
        case .gccMachineDescription:
            return "#FFCFAB"
        case .gdscript:
            return "#355570"
        case .gedcom:
            return "#003058"
        case .glsl:
            return "#5686A5"
        case .gsc:
            return "#FF6800"
        case .gameMakerLanguage:
            return "#71B417"
        case .gemfileLock:
            return "#701516"
        case .gemini:
            return "#FF6900"
        case .genero:
            return "#63408E"
        case .generoForms:
            return "#D8DF39"
        case .genie:
            return "#FB855D"
        case .genshi:
            return "#951531"
        case .gentooEbuild:
            return "#9400FF"
        case .gentooEclass:
            return "#9400FF"
        case .gerberImage:
            return "#D20B00"
        case .gherkin:
            return "#5B2063"
        case .gitAttributes:
            return "#F44D27"
        case .gitConfig:
            return "#F44D27"
        case .gitRevisionList:
            return "#F44D27"
        case .gleam:
            return "#FFAFF3"
        case .glyph:
            return "#C1AC7F"
        case .gnuplot:
            return "#F0A9F0"
        case .go:
            return "#00ADD8"
        case .goChecksums:
            return "#00ADD8"
        case .goModule:
            return "#00ADD8"
        case .goWorkspace:
            return "#00ADD8"
        case .godotResource:
            return "#355570"
        case .golo:
            return "#88562A"
        case .gosu:
            return "#82937F"
        case .grace:
            return "#615F8B"
        case .gradle:
            return "#02303A"
        case .grammaticalFramework:
            return "#FF0000"
        case .graphql:
            return "#E10098"
        case .graphvizDot:
            return "#2596BE"
        case .groovy:
            return "#4298B8"
        case .groovyServerPages:
            return "#4298B8"
        case .haproxy:
            return "#106DA9"
        case .hcl:
            return "#844FBA"
        case .hlsl:
            return "#AACE60"
        case .hocon:
            return "#9FF8EE"
        case .html:
            return "#E34C26"
        case .htmlEcr:
            return "#2E1052"
        case .htmlEex:
            return "#6E4A7E"
        case .htmlErb:
            return "#701516"
        case .htmlPhp:
            return "#4F5D95"
        case .htmlRazor:
            return "#512BE4"
        case .http:
            return "#005C9C"
        case .hxml:
            return "#F68712"
        case .hack:
            return "#878787"
        case .haml:
            return "#ECE2A9"
        case .handlebars:
            return "#F7931E"
        case .harbour:
            return "#0E60E3"
        case .haskell:
            return "#5E5086"
        case .haxe:
            return "#DF7900"
        case .hiveql:
            return "#DCE200"
        case .holyc:
            return "#FFEFAF"
        case .hostsFile:
            return "#308888"
        case .hy:
            return "#7790B2"
        case .idl:
            return "#A3522F"
        case .igorPro:
            return "#0000CC"
        case .ini:
            return "#D1DBE0"
        case .idris:
            return "#B30000"
        case .ignoreList:
            return "#000000"
        case .imagejMacro:
            return "#99AAFF"
        case .imba:
            return "#16CEC6"
        case .innoSetup:
            return "#264B99"
        case .io:
            return "#A9188D"
        case .ioke:
            return "#078193"
        case .isabelle:
            return "#FEFE00"
        case .isabelleRoot:
            return "#FEFE00"
        case .j:
            return "#9EEDFF"
        case .jarManifest:
            return "#B07219"
        case .jcl:
            return "#D90E09"
        case .jflex:
            return "#DBCA00"
        case .json:
            return "#292929"
        case .jsonWithComments:
            return "#292929"
        case .json5:
            return "#267CB9"
        case .jsonld:
            return "#0C479C"
        case .jsoniq:
            return "#40D47E"
        case .janet:
            return "#0886A5"
        case .jasmin:
            return "#D03600"
        case .java:
            return "#B07219"
        case .javaProperties:
            return "#2A6277"
        case .javaServerPages:
            return "#2A6277"
        case .javascript:
            return "#F1E05A"
        case .javascriptErb:
            return "#F1E05A"
        case .jestSnapshot:
            return "#15C213"
        case .jetbrainsMps:
            return "#21D789"
        case .jinja:
            return "#A52A22"
        case .jison:
            return "#56B3CB"
        case .jisonLex:
            return "#56B3CB"
        case .jolie:
            return "#843179"
        case .jsonnet:
            return "#0064BD"
        case .julia:
            return "#A270BA"
        case .jupyterNotebook:
            return "#DA5B0B"
        case .just:
            return "#384D54"
        case .krl:
            return "#28430A"
        case .kaitaiStruct:
            return "#773B37"
        case .kakounescript:
            return "#6F8042"
        case .kerboscript:
            return "#41ADF0"
        case .kicadLayout:
            return "#2F4AAB"
        case .kicadLegacyLayout:
            return "#2F4AAB"
        case .kicadSchematic:
            return "#2F4AAB"
        case .kotlin:
            return "#A97BFF"
        case .lfe:
            return "#4C3023"
        case .llvm:
            return "#185619"
        case .lolcode:
            return "#CC9900"
        case .lsl:
            return "#3D9970"
        case .labview:
            return "#FEDE06"
        case .lark:
            return "#2980B9"
        case .lasso:
            return "#999999"
        case .latte:
            return "#F2A542"
        case .less:
            return "#1D365D"
        case .lex:
            return "#DBCA00"
        case .ligolang:
            return "#0E74FF"
        case .lilypond:
            return "#9CCC7C"
        case .liquid:
            return "#67B8DE"
        case .literateAgda:
            return "#315665"
        case .literateCoffeescript:
            return "#244776"
        case .literateHaskell:
            return "#5E5086"
        case .livescript:
            return "#499886"
        case .logtalk:
            return "#295B9A"
        case .lookml:
            return "#652B81"
        case .lua:
            return "#000080"
        case .matlab:
            return "#E16737"
        case .maxscript:
            return "#00A6A6"
        case .mdx:
            return "#FCB32C"
        case .mlir:
            return "#5EC8DB"
        case .mql4:
            return "#62A8D6"
        case .mql5:
            return "#4A76B8"
        case .mtml:
            return "#B7E1F4"
        case .macaulay2:
            return "#D8FFFF"
        case .makefile:
            return "#427819"
        case .mako:
            return "#7E858D"
        case .markdown:
            return "#083FA1"
        case .marko:
            return "#42BFF2"
        case .mask:
            return "#F97732"
        case .mathematica:
            return "#DD1100"
        case .max:
            return "#C4A79C"
        case .mercury:
            return "#FF2B2B"
        case .mermaid:
            return "#FF3670"
        case .meson:
            return "#007800"
        case .metal:
            return "#8F14E9"
        case .miniyaml:
            return "#FF1111"
        case .mint:
            return "#02B046"
        case .mirah:
            return "#C7A938"
        case .modelica:
            return "#DE1D31"
        case .modula2:
            return "#10253F"
        case .modula3:
            return "#223388"
        case .monkeyC:
            return "#8D6747"
        case .moonscript:
            return "#FF4585"
        case .motoko:
            return "#FBB03B"
        case .motorola68kAssembly:
            return "#005DAA"
        case .move:
            return "#4A137A"
        case .mustache:
            return "#724B3B"
        case .ncl:
            return "#28431F"
        case .npmConfig:
            return "#CB3837"
        case .nwscript:
            return "#111522"
        case .nasal:
            return "#1D2C4E"
        case .nearley:
            return "#990000"
        case .nemerle:
            return "#3D3C6E"
        case .netlinx:
            return "#0AA0FF"
        case .netlinxErb:
            return "#747FAA"
        case .netlogo:
            return "#FF6375"
        case .newlisp:
            return "#87AED7"
        case .nextflow:
            return "#3AC486"
        case .nginx:
            return "#009639"
        case .nim:
            return "#FFC200"
        case .nit:
            return "#009917"
        case .nix:
            return "#7E7EFF"
        case .nu:
            return "#C9DF40"
        case .numpy:
            return "#9C8AF9"
        case .nunjucks:
            return "#3D8137"
        case .nushell:
            return "#4E9906"
        case .oasv2Json:
            return "#85EA2D"
        case .oasv2Yaml:
            return "#85EA2D"
        case .oasv3Json:
            return "#85EA2D"
        case .oasv3Yaml:
            return "#85EA2D"
        case .ocaml:
            return "#EF7A08"
        case .objectscript:
            return "#424893"
        case .objectiveC:
            return "#438EFF"
        case .objectiveCpp:
            return "#6866FB"
        case .objectiveJ:
            return "#FF0C5A"
        case .odin:
            return "#60AFFE"
        case .omgrofl:
            return "#CABBFF"
        case .opal:
            return "#F7EDE0"
        case .openPolicyAgent:
            return "#7D9199"
        case .openapiSpecificationV2:
            return "#85EA2D"
        case .openapiSpecificationV3:
            return "#85EA2D"
        case .opencl:
            return "#ED2E2D"
        case .openedgeAbl:
            return "#5CE600"
        case .openqasm:
            return "#AA70FF"
        case .openscad:
            return "#E5CD45"
        case .optionList:
            return "#476732"
        case .org:
            return "#77AA99"
        case .oxygene:
            return "#CDD0E3"
        case .oz:
            return "#FAB738"
        case .p4:
            return "#7055B5"
        case .pddl:
            return "#0D00FF"
        case .pegJs:
            return "#234D6B"
        case .php:
            return "#4F5D95"
        case .plsql:
            return "#DAD8D8"
        case .plpgsql:
            return "#336790"
        case .povRaySdl:
            return "#6BAC65"
        case .pact:
            return "#F7A8B8"
        case .pan:
            return "#CC0000"
        case .papyrus:
            return "#6600CC"
        case .parrot:
            return "#F3CA0A"
        case .pascal:
            return "#E3F171"
        case .pawn:
            return "#DBB284"
        case .pep8:
            return "#C76F5B"
        case .perl:
            return "#0298C3"
        case .picolisp:
            return "#6067AF"
        case .piglatin:
            return "#FCD7DE"
        case .pike:
            return "#005390"
        case .plantuml:
            return "#FBBD16"
        case .pogoscript:
            return "#D80074"
        case .polar:
            return "#AE81FF"
        case .portugol:
            return "#F8BD00"
        case .postcss:
            return "#DC3A0C"
        case .postscript:
            return "#DA291C"
        case .powerbuilder:
            return "#8F0F8D"
        case .powershell:
            return "#012456"
        case .prisma:
            return "#0C344B"
        case .processing:
            return "#0096D8"
        case .procfile:
            return "#3B2F63"
        case .prolog:
            return "#74283C"
        case .promela:
            return "#DE0000"
        case .propellerSpin:
            return "#7FA2A7"
        case .pug:
            return "#A86454"
        case .puppet:
            return "#302B6D"
        case .purebasic:
            return "#5A6986"
        case .purescript:
            return "#1D222D"
        case .pyret:
            return "#EE1E10"
        case .python:
            return "#3572A5"
        case .pythonConsole:
            return "#3572A5"
        case .pythonTraceback:
            return "#3572A5"
        case .qsharp:
            return "#FED659"
        case .qml:
            return "#44A51C"
        case .qtScript:
            return "#00B841"
        case .quake:
            return "#882233"
        case .r:
            return "#198CE7"
        case .raml:
            return "#77D9FB"
        case .rbs:
            return "#701516"
        case .rdoc:
            return "#701516"
        case .rexx:
            return "#D90E09"
        case .rmarkdown:
            return "#198CE7"
        case .rpgle:
            return "#2BDE21"
        case .runoff:
            return "#665A4E"
        case .racket:
            return "#3C5CAA"
        case .ragel:
            return "#9D5200"
        case .raku:
            return "#0000FB"
        case .rascal:
            return "#FFFAA0"
        case .rescript:
            return "#ED5051"
        case .reason:
            return "#FF5847"
        case .reasonligo:
            return "#FF5847"
        case .rebol:
            return "#358A5B"
        case .recordJar:
            return "#0673BA"
        case .red:
            return "#F50000"
        case .regularExpression:
            return "#009A00"
        case .renPy:
            return "#FF7F7F"
        case .ring:
            return "#2D54CB"
        case .riot:
            return "#A71E49"
        case .robotframework:
            return "#00C0B5"
        case .roff:
            return "#ECDEBE"
        case .roffManpage:
            return "#ECDEBE"
        case .rouge:
            return "#CC0088"
        case .routerosScript:
            return "#DE3941"
        case .ruby:
            return "#701516"
        case .rust:
            return "#DEA584"
        case .sas:
            return "#B34936"
        case .scss:
            return "#C6538C"
        case .sparql:
            return "#0C4597"
        case .sqf:
            return "#3F3F3F"
        case .sql:
            return "#E38C00"
        case .sqlpl:
            return "#E38C00"
        case .srecodeTemplate:
            return "#348A34"
        case .stl:
            return "#373B5E"
        case .svg:
            return "#FF9900"
        case .saltstack:
            return "#646464"
        case .sass:
            return "#A53B70"
        case .scala:
            return "#C22D40"
        case .scaml:
            return "#BD181A"
        case .scenic:
            return "#FDC700"
        case .scheme:
            return "#1E4AEC"
        case .scilab:
            return "#CA0F21"
        case .self:
            return "#0579AA"
        case .shaderlab:
            return "#222C37"
        case .shell:
            return "#89E051"
        case .shellcheckConfig:
            return "#CECFCB"
        case .shen:
            return "#120F14"
        case .simpleFileVerification:
            return "#C9BFED"
        case .singularity:
            return "#64E6AD"
        case .slash:
            return "#007EFF"
        case .slice:
            return "#003FA2"
        case .slim:
            return "#2B2B2B"
        case .smpl:
            return "#C94949"
        case .smalltalk:
            return "#596706"
        case .smarty:
            return "#F0C040"
        case .smithy:
            return "#C44536"
        case .snakemake:
            return "#419179"
        case .solidity:
            return "#AA6746"
        case .sourcepawn:
            return "#F69E1D"
        case .squirrel:
            return "#800000"
        case .stan:
            return "#B2011D"
        case .standardMl:
            return "#DC566D"
        case .starlark:
            return "#76D275"
        case .stata:
            return "#1A5F91"
        case .stringtemplate:
            return "#3FB34F"
        case .stylus:
            return "#FF6347"
        case .subripText:
            return "#9E0101"
        case .sugarss:
            return "#2FCC9F"
        case .supercollider:
            return "#46390B"
        case .svelte:
            return "#FF3E00"
        case .sway:
            return "#DEA584"
        case .swift:
            return "#F05138"
        case .systemverilog:
            return "#DAE1C2"
        case .tiProgram:
            return "#A0AA87"
        case .tlVerilog:
            return "#C40023"
        case .tla:
            return "#4B0079"
        case .toml:
            return "#9C4221"
        case .tsql:
            return "#E38C00"
        case .tsv:
            return "#237346"
        case .tsx:
            return "#3178C6"
        case .txl:
            return "#0178B8"
        case .talon:
            return "#333333"
        case .tcl:
            return "#E4CC98"
        case .tex:
            return "#3D6117"
        case .terra:
            return "#00004C"
        case .textmateProperties:
            return "#DF66E4"
        case .textile:
            return "#FFE7AC"
        case .thrift:
            return "#D12127"
        case .turing:
            return "#CF142B"
        case .twig:
            return "#C1D026"
        case .typescript:
            return "#3178C6"
        case .unifiedParallelC:
            return "#4E3617"
        case .unity3dAsset:
            return "#222C37"
        case .uno:
            return "#9933CC"
        case .unrealscript:
            return "#A54C4D"
        case .urweb:
            return "#CCCCEE"
        case .v:
            return "#4F87C4"
        case .vba:
            return "#867DB1"
        case .vbscript:
            return "#15DCDC"
        case .vcl:
            return "#148AA8"
        case .vhdl:
            return "#ADB2CB"
        case .vala:
            return "#A56DE2"
        case .valveDataFormat:
            return "#F26025"
        case .velocityTemplateLanguage:
            return "#507CFF"
        case .verilog:
            return "#B2B7F8"
        case .vimHelpFile:
            return "#199F4B"
        case .vimScript:
            return "#199F4B"
        case .vimSnippet:
            return "#199F4B"
        case .visualBasicNet:
            return "#945DB7"
        case .visualBasic60:
            return "#2C6353"
        case .volt:
            return "#1F1F1F"
        case .vue:
            return "#41B883"
        case .vyper:
            return "#2980B9"
        case .wdl:
            return "#42F1F4"
        case .wgsl:
            return "#1A5E9A"
        case .webOntologyLanguage:
            return "#5B70BD"
        case .webassembly:
            return "#04133B"
        case .webassemblyInterfaceType:
            return "#6250E7"
        case .whiley:
            return "#D5C397"
        case .wikitext:
            return "#FC5757"
        case .windowsRegistryEntries:
            return "#52D5FF"
        case .witcherScript:
            return "#FF0000"
        case .wollok:
            return "#A23738"
        case .worldOfWarcraftAddonData:
            return "#F7E43F"
        case .wren:
            return "#383838"
        case .x10:
            return "#4B6BEF"
        case .xc:
            return "#99DA07"
        case .xml:
            return "#0060AC"
        case .xmlPropertyList:
            return "#0060AC"
        case .xquery:
            return "#5232E7"
        case .xslt:
            return "#EB8CEB"
        case .xojo:
            return "#81BD41"
        case .xonsh:
            return "#285EEF"
        case .xtend:
            return "#24255D"
        case .yaml:
            return "#CB171E"
        case .yara:
            return "#220000"
        case .yasnippet:
            return "#32AB90"
        case .yacc:
            return "#4B6C4B"
        case .yul:
            return "#794932"
        case .zap:
            return "#0D665E"
        case .zil:
            return "#DC75E5"
        case .zenscript:
            return "#00BCD1"
        case .zephir:
            return "#118F9E"
        case .zig:
            return "#EC915C"
        case .zimpl:
            return "#D67711"
        case .ec:
            return "#913960"
        case .fish:
            return "#4AAE47"
        case .hoon:
            return "#00B171"
        case .jq:
            return "#C7254E"
        case .kvlang:
            return "#1DA6E0"
        case .mircScript:
            return "#3D57C3"
        case .mcfunction:
            return "#E22837"
        case .mupad:
            return "#244963"
        case .nanorc:
            return "#2D004D"
        case .nesc:
            return "#94B0C7"
        case .ooc:
            return "#B0B77E"
        case .q:
            return "#0040CD"
        case .restructuredtext:
            return "#141414"
        case .sed:
            return "#64B970"
        case .wisp:
            return "#7582D1"
        case .xbase:
            return "#403A40"
        default:
            return nil
        }
    }
    public var extensions: [String] {
        switch self {
        case ._1cEnterprise:
            return [".bsl", ".os"]
        case ._2DimensionalArray:
            return [".2da"]
        case ._4d:
            return [".4dm"]
        case .abap:
            return [".abap"]
        case .abapCds:
            return [".asddls"]
        case .abnf:
            return [".abnf"]
        case .agsScript:
            return [".asc", ".ash"]
        case .aidl:
            return [".aidl"]
        case .al:
            return [".al"]
        case .ampl:
            return [".ampl", ".mod"]
        case .antlr:
            return [".g4"]
        case .apiBlueprint:
            return [".apib"]
        case .apl:
            return [".apl", ".dyalog"]
        case .asl:
            return [".asl", ".dsl"]
        case .asn1:
            return [".asn", ".asn1"]
        case .aspNet:
            return [".asax", ".ascx", ".ashx", ".asmx", ".aspx", ".axd"]
        case .ats:
            return [".dats", ".hats", ".sats"]
        case .actionscript:
            return [".as"]
        case .ada:
            return [".adb", ".ada", ".ads"]
        case .adblockFilterList:
            return [".txt"]
        case .adobeFontMetrics:
            return [".afm"]
        case .agda:
            return [".agda"]
        case .alloy:
            return [".als"]
        case .altiumDesigner:
            return [".OutJob", ".PcbDoc", ".PrjPCB", ".SchDoc"]
        case .angelscript:
            return [".as", ".angelscript"]
        case .antlers:
            return [".antlers.html", ".antlers.php", ".antlers.xml"]
        case .apacheconf:
            return [".apacheconf", ".vhost"]
        case .apex:
            return [".cls", ".trigger"]
        case .apolloGuidanceComputer:
            return [".agc"]
        case .applescript:
            return [".applescript", ".scpt"]
        case .arc:
            return [".arc"]
        case .asciidoc:
            return [".asciidoc", ".adoc", ".asc"]
        case .aspectj:
            return [".aj"]
        case .assembly:
            return [".asm", ".a51", ".i", ".inc", ".nas", ".nasm"]
        case .astro:
            return [".astro"]
        case .asymptote:
            return [".asy"]
        case .augeas:
            return [".aug"]
        case .autohotkey:
            return [".ahk", ".ahkl"]
        case .autoit:
            return [".au3"]
        case .avroIdl:
            return [".avdl"]
        case .awk:
            return [".awk", ".auk", ".gawk", ".mawk", ".nawk"]
        case .basic:
            return [".bas"]
        case .ballerina:
            return [".bal"]
        case .batchfile:
            return [".bat", ".cmd"]
        case .beef:
            return [".bf"]
        case .befunge:
            return [".befunge", ".bf"]
        case .berry:
            return [".be"]
        case .bibtex:
            return [".bib", ".bibtex"]
        case .bicep:
            return [".bicep"]
        case .bikeshed:
            return [".bs"]
        case .bison:
            return [".bison"]
        case .bitbake:
            return [".bb"]
        case .blade:
            return [".blade", ".blade.php"]
        case .blitzbasic:
            return [".bb", ".decls"]
        case .blitzmax:
            return [".bmx"]
        case .bluespec:
            return [".bsv"]
        case .boo:
            return [".boo"]
        case .boogie:
            return [".bpl"]
        case .brainfuck:
            return [".b", ".bf"]
        case .brighterscript:
            return [".bs"]
        case .brightscript:
            return [".brs"]
        case .c:
            return [".c", ".cats", ".h", ".idc"]
        case .csharp:
            return [".cs", ".cake", ".csx", ".linq"]
        case .cpp:
            return [".cpp", ".c++", ".cc", ".cp", ".cppm", ".cxx", ".h", ".h++", ".hh", ".hpp", ".hxx", ".inc", ".inl", ".ino", ".ipp", ".ixx", ".re", ".tcc", ".tpp", ".txx"]
        case .cObjdump:
            return [".c-objdump"]
        case .c2hsHaskell:
            return [".chs"]
        case .capCds:
            return [".cds"]
        case .cil:
            return [".cil"]
        case .clips:
            return [".clp"]
        case .cmake:
            return [".cmake", ".cmake.in"]
        case .cobol:
            return [".cob", ".cbl", ".ccp", ".cobol", ".cpy"]
        case .collada:
            return [".dae"]
        case .cson:
            return [".cson"]
        case .css:
            return [".css"]
        case .csv:
            return [".csv"]
        case .cue:
            return [".cue"]
        case .cweb:
            return [".w"]
        case .cabalConfig:
            return [".cabal"]
        case .cadence:
            return [".cdc"]
        case .cairo:
            return [".cairo"]
        case .cameligo:
            return [".mligo"]
        case .capNProto:
            return [".capnp"]
        case .cartocss:
            return [".mss"]
        case .ceylon:
            return [".ceylon"]
        case .chapel:
            return [".chpl"]
        case .charity:
            return [".ch"]
        case .checksums:
            return [".crc32", ".md2", ".md4", ".md5", ".sha1", ".sha2", ".sha224", ".sha256", ".sha256sum", ".sha3", ".sha384", ".sha512"]
        case .chuck:
            return [".ck"]
        case .circom:
            return [".circom"]
        case .cirru:
            return [".cirru"]
        case .clarion:
            return [".clw"]
        case .clarity:
            return [".clar"]
        case .classicAsp:
            return [".asp"]
        case .clean:
            return [".icl", ".dcl"]
        case .click:
            return [".click"]
        case .clojure:
            return [".clj", ".bb", ".boot", ".cl2", ".cljc", ".cljs", ".cljs.hl", ".cljscm", ".cljx", ".hic"]
        case .closureTemplates:
            return [".soy"]
        case .conllU:
            return [".conllu", ".conll"]
        case .codeql:
            return [".ql", ".qll"]
        case .coffeescript:
            return [".coffee", "._coffee", ".cake", ".cjsx", ".iced"]
        case .coldfusion:
            return [".cfm", ".cfml"]
        case .coldfusionCfc:
            return [".cfc"]
        case .commonLisp:
            return [".lisp", ".asd", ".cl", ".l", ".lsp", ".ny", ".podsl", ".sexp"]
        case .commonWorkflowLanguage:
            return [".cwl"]
        case .componentPascal:
            return [".cp", ".cps"]
        case .cool:
            return [".cl"]
        case .coq:
            return [".coq", ".v"]
        case .cppObjdump:
            return [".cppobjdump", ".c++-objdump", ".c++objdump", ".cpp-objdump", ".cxx-objdump"]
        case .creole:
            return [".creole"]
        case .crystal:
            return [".cr"]
        case .csound:
            return [".orc", ".udo"]
        case .csoundDocument:
            return [".csd"]
        case .csoundScore:
            return [".sco"]
        case .cuda:
            return [".cu", ".cuh"]
        case .cueSheet:
            return [".cue"]
        case .curry:
            return [".curry"]
        case .cycript:
            return [".cy"]
        case .cypher:
            return [".cyp", ".cypher"]
        case .cython:
            return [".pyx", ".pxd", ".pxi"]
        case .d:
            return [".d", ".di"]
        case .dObjdump:
            return [".d-objdump"]
        case .d2:
            return [".d2"]
        case .digitalCommandLanguage:
            return [".com"]
        case .dm:
            return [".dm"]
        case .dnsZone:
            return [".zone", ".arpa"]
        case .dtrace:
            return [".d"]
        case .dafny:
            return [".dfy"]
        case .darcsPatch:
            return [".darcspatch", ".dpatch"]
        case .dart:
            return [".dart"]
        case .dataweave:
            return [".dwl"]
        case .debianPackageControlFile:
            return [".dsc"]
        case .denizenscript:
            return [".dsc"]
        case .dhall:
            return [".dhall"]
        case .diff:
            return [".diff", ".patch"]
        case .directx3dFile:
            return [".x"]
        case .dockerfile:
            return [".dockerfile"]
        case .dogescript:
            return [".djs"]
        case .dotenv:
            return [".env"]
        case .dylan:
            return [".dylan", ".dyl", ".intr", ".lid"]
        case .e:
            return [".e"]
        case .eMail:
            return [".eml", ".mbox"]
        case .ebnf:
            return [".ebnf"]
        case .ecl:
            return [".ecl", ".eclxml"]
        case .eclipse:
            return [".ecl"]
        case .ejs:
            return [".ejs", ".ect", ".ejs.t", ".jst"]
        case .eq:
            return [".eq"]
        case .eagle:
            return [".sch", ".brd"]
        case .easybuild:
            return [".eb"]
        case .ecereProjects:
            return [".epj"]
        case .ecmarkup:
            return [".html"]
        case .editorconfig:
            return [".editorconfig"]
        case .edjeDataCollection:
            return [".edc"]
        case .eiffel:
            return [".e"]
        case .elixir:
            return [".ex", ".exs"]
        case .elm:
            return [".elm"]
        case .elvish:
            return [".elv"]
        case .emacsLisp:
            return [".el", ".emacs", ".emacs.desktop"]
        case .emberscript:
            return [".em", ".emberscript"]
        case .erlang:
            return [".erl", ".app", ".app.src", ".es", ".escript", ".hrl", ".xrl", ".yrl"]
        case .euphoria:
            return [".e", ".ex"]
        case .fsharp:
            return [".fs", ".fsi", ".fsx"]
        case .f2:
            return [".fst", ".fsti"]
        case .figletFont:
            return [".flf"]
        case .flux:
            return [".fx", ".flux"]
        case .factor:
            return [".factor"]
        case .fancy:
            return [".fy", ".fancypack"]
        case .fantom:
            return [".fan"]
        case .faust:
            return [".dsp"]
        case .fennel:
            return [".fnl"]
        case .filebenchWml:
            return [".f"]
        case .filterscript:
            return [".fs"]
        case .fluent:
            return [".ftl"]
        case .formatted:
            return [".for", ".eam.fs"]
        case .forth:
            return [".fth", ".4th", ".f", ".for", ".forth", ".fr", ".frt", ".fs"]
        case .fortran:
            return [".f", ".f77", ".for", ".fpp"]
        case .fortranFreeForm:
            return [".f90", ".f03", ".f08", ".f95"]
        case .freebasic:
            return [".bi", ".bas"]
        case .freemarker:
            return [".ftl"]
        case .frege:
            return [".fr"]
        case .futhark:
            return [".fut"]
        case .gCode:
            return [".g", ".cnc", ".gco", ".gcode"]
        case .gaml:
            return [".gaml"]
        case .gams:
            return [".gms"]
        case .gap:
            return [".g", ".gap", ".gd", ".gi", ".tst"]
        case .gccMachineDescription:
            return [".md"]
        case .gdb:
            return [".gdb", ".gdbinit"]
        case .gdscript:
            return [".gd"]
        case .gedcom:
            return [".ged"]
        case .glsl:
            return [".glsl", ".fp", ".frag", ".frg", ".fs", ".fsh", ".fshader", ".geo", ".geom", ".glslf", ".glslv", ".gs", ".gshader", ".rchit", ".rmiss", ".shader", ".tesc", ".tese", ".vert", ".vrx", ".vsh", ".vshader"]
        case .gn:
            return [".gn", ".gni"]
        case .gsc:
            return [".gsc", ".csc", ".gsh"]
        case .gameMakerLanguage:
            return [".gml"]
        case .gemini:
            return [".gmi"]
        case .genero:
            return [".4gl"]
        case .generoForms:
            return [".per"]
        case .genie:
            return [".gs"]
        case .genshi:
            return [".kid"]
        case .gentooEbuild:
            return [".ebuild"]
        case .gentooEclass:
            return [".eclass"]
        case .gerberImage:
            return [".gbr", ".cmp", ".gbl", ".gbo", ".gbp", ".gbs", ".gko", ".gml", ".gpb", ".gpt", ".gtl", ".gto", ".gtp", ".gts", ".ncl", ".sol"]
        case .gettextCatalog:
            return [".po", ".pot"]
        case .gherkin:
            return [".feature", ".story"]
        case .gitConfig:
            return [".gitconfig"]
        case .gleam:
            return [".gleam"]
        case .glyph:
            return [".glf"]
        case .glyphBitmapDistributionFormat:
            return [".bdf"]
        case .gnuplot:
            return [".gp", ".gnu", ".gnuplot", ".p", ".plot", ".plt"]
        case .go:
            return [".go"]
        case .godotResource:
            return [".gdnlib", ".gdns", ".tres", ".tscn"]
        case .golo:
            return [".golo"]
        case .gosu:
            return [".gs", ".gst", ".gsx", ".vark"]
        case .grace:
            return [".grace"]
        case .gradle:
            return [".gradle"]
        case .grammaticalFramework:
            return [".gf"]
        case .graphModelingLanguage:
            return [".gml"]
        case .graphql:
            return [".graphql", ".gql", ".graphqls"]
        case .graphvizDot:
            return [".dot", ".gv"]
        case .groovy:
            return [".groovy", ".grt", ".gtpl", ".gvy"]
        case .groovyServerPages:
            return [".gsp"]
        case .haproxy:
            return [".cfg"]
        case .hcl:
            return [".hcl", ".nomad", ".tf", ".tfvars", ".workflow"]
        case .hlsl:
            return [".hlsl", ".cginc", ".fx", ".fxh", ".hlsli"]
        case .hocon:
            return [".hocon"]
        case .html:
            return [".html", ".hta", ".htm", ".html.hl", ".inc", ".xht", ".xhtml"]
        case .htmlEcr:
            return [".ecr"]
        case .htmlEex:
            return [".eex", ".html.heex", ".html.leex"]
        case .htmlErb:
            return [".erb", ".erb.deface", ".rhtml"]
        case .htmlPhp:
            return [".phtml"]
        case .htmlRazor:
            return [".cshtml", ".razor"]
        case .http:
            return [".http"]
        case .hxml:
            return [".hxml"]
        case .hack:
            return [".hack", ".hh", ".hhi", ".php"]
        case .haml:
            return [".haml", ".haml.deface"]
        case .handlebars:
            return [".handlebars", ".hbs"]
        case .harbour:
            return [".hb"]
        case .haskell:
            return [".hs", ".hs-boot", ".hsc"]
        case .haxe:
            return [".hx", ".hxsl"]
        case .hiveql:
            return [".q", ".hql"]
        case .holyc:
            return [".hc"]
        case .hy:
            return [".hy"]
        case .hyphy:
            return [".bf"]
        case .idl:
            return [".pro", ".dlm"]
        case .igorPro:
            return [".ipf"]
        case .ini:
            return [".ini", ".cfg", ".cnf", ".dof", ".lektorproject", ".prefs", ".pro", ".properties", ".url"]
        case .ircLog:
            return [".irclog", ".weechatlog"]
        case .idris:
            return [".idr", ".lidr"]
        case .ignoreList:
            return [".gitignore"]
        case .imagejMacro:
            return [".ijm"]
        case .imba:
            return [".imba"]
        case .inform7:
            return [".ni", ".i7x"]
        case .ink:
            return [".ink"]
        case .innoSetup:
            return [".iss", ".isl"]
        case .io:
            return [".io"]
        case .ioke:
            return [".ik"]
        case .isabelle:
            return [".thy"]
        case .j:
            return [".ijs"]
        case .jcl:
            return [".jcl"]
        case .jflex:
            return [".flex", ".jflex"]
        case .json:
            return [".json", ".4DForm", ".4DProject", ".avsc", ".geojson", ".gltf", ".har", ".ice", ".JSON-tmLanguage", ".jsonl", ".mcmeta", ".tfstate", ".tfstate.backup", ".topojson", ".webapp", ".webmanifest", ".yy", ".yyp"]
        case .jsonWithComments:
            return [".jsonc", ".code-snippets", ".sublime-build", ".sublime-commands", ".sublime-completions", ".sublime-keymap", ".sublime-macro", ".sublime-menu", ".sublime-mousemap", ".sublime-project", ".sublime-settings", ".sublime-theme", ".sublime-workspace", ".sublime_metrics", ".sublime_session"]
        case .json5:
            return [".json5"]
        case .jsonld:
            return [".jsonld"]
        case .jsoniq:
            return [".jq"]
        case .janet:
            return [".janet"]
        case .jasmin:
            return [".j"]
        case .java:
            return [".java", ".jav", ".jsh"]
        case .javaProperties:
            return [".properties"]
        case .javaServerPages:
            return [".jsp", ".tag"]
        case .javascript:
            return [".js", "._js", ".bones", ".cjs", ".es", ".es6", ".frag", ".gs", ".jake", ".javascript", ".jsb", ".jscad", ".jsfl", ".jslib", ".jsm", ".jspre", ".jss", ".jsx", ".mjs", ".njs", ".pac", ".sjs", ".ssjs", ".xsjs", ".xsjslib"]
        case .javascriptErb:
            return [".js.erb"]
        case .jestSnapshot:
            return [".snap"]
        case .jetbrainsMps:
            return [".mps", ".mpl", ".msd"]
        case .jinja:
            return [".jinja", ".j2", ".jinja2"]
        case .jison:
            return [".jison"]
        case .jisonLex:
            return [".jisonlex"]
        case .jolie:
            return [".ol", ".iol"]
        case .jsonnet:
            return [".jsonnet", ".libsonnet"]
        case .julia:
            return [".jl"]
        case .jupyterNotebook:
            return [".ipynb"]
        case .krl:
            return [".krl"]
        case .kaitaiStruct:
            return [".ksy"]
        case .kakounescript:
            return [".kak"]
        case .kerboscript:
            return [".ks"]
        case .kicadLayout:
            return [".kicad_pcb", ".kicad_mod", ".kicad_wks"]
        case .kicadLegacyLayout:
            return [".brd"]
        case .kicadSchematic:
            return [".kicad_sch", ".sch"]
        case .kickstart:
            return [".ks"]
        case .kit:
            return [".kit"]
        case .kotlin:
            return [".kt", ".ktm", ".kts"]
        case .kusto:
            return [".csl", ".kql"]
        case .lfe:
            return [".lfe"]
        case .llvm:
            return [".ll"]
        case .lolcode:
            return [".lol"]
        case .lsl:
            return [".lsl", ".lslp"]
        case .ltspiceSymbol:
            return [".asy"]
        case .labview:
            return [".lvproj", ".lvclass", ".lvlib"]
        case .lark:
            return [".lark"]
        case .lasso:
            return [".lasso", ".las", ".lasso8", ".lasso9"]
        case .latte:
            return [".latte"]
        case .lean:
            return [".lean", ".hlean"]
        case .less:
            return [".less"]
        case .lex:
            return [".l", ".lex"]
        case .ligolang:
            return [".ligo"]
        case .lilypond:
            return [".ly", ".ily"]
        case .limbo:
            return [".b", ".m"]
        case .linkerScript:
            return [".ld", ".lds", ".x"]
        case .linuxKernelModule:
            return [".mod"]
        case .liquid:
            return [".liquid"]
        case .literateAgda:
            return [".lagda"]
        case .literateCoffeescript:
            return [".litcoffee", ".coffee.md"]
        case .literateHaskell:
            return [".lhs"]
        case .livescript:
            return [".ls", "._ls"]
        case .logos:
            return [".xm", ".x", ".xi"]
        case .logtalk:
            return [".lgt", ".logtalk"]
        case .lookml:
            return [".lkml", ".lookml"]
        case .loomscript:
            return [".ls"]
        case .lua:
            return [".lua", ".fcgi", ".nse", ".p8", ".pd_lua", ".rbxs", ".rockspec", ".wlua"]
        case .m:
            return [".mumps", ".m"]
        case .m4:
            return [".m4", ".mc"]
        case .m4sugar:
            return [".m4"]
        case .matlab:
            return [".matlab", ".m"]
        case .maxscript:
            return [".ms", ".mcr"]
        case .mdx:
            return [".mdx"]
        case .mlir:
            return [".mlir"]
        case .mql4:
            return [".mq4", ".mqh"]
        case .mql5:
            return [".mq5", ".mqh"]
        case .mtml:
            return [".mtml"]
        case .muf:
            return [".muf", ".m"]
        case .macaulay2:
            return [".m2"]
        case .makefile:
            return [".mak", ".d", ".make", ".makefile", ".mk", ".mkfile"]
        case .mako:
            return [".mako", ".mao"]
        case .markdown:
            return [".md", ".livemd", ".markdown", ".mdown", ".mdwn", ".mkd", ".mkdn", ".mkdown", ".ronn", ".scd", ".workbook"]
        case .marko:
            return [".marko"]
        case .mask:
            return [".mask"]
        case .mathematica:
            return [".mathematica", ".cdf", ".m", ".ma", ".mt", ".nb", ".nbp", ".wl", ".wlt"]
        case .max:
            return [".maxpat", ".maxhelp", ".maxproj", ".mxt", ".pat"]
        case .mercury:
            return [".m", ".moo"]
        case .mermaid:
            return [".mmd", ".mermaid"]
        case .metal:
            return [".metal"]
        case .microsoftDeveloperStudioProject:
            return [".dsp"]
        case .microsoftVisualStudioSolution:
            return [".sln"]
        case .minid:
            return [".minid"]
        case .miniyaml:
            return [".yaml", ".yml"]
        case .mint:
            return [".mint"]
        case .mirah:
            return [".druby", ".duby", ".mirah"]
        case .modelica:
            return [".mo"]
        case .modula2:
            return [".mod"]
        case .modula3:
            return [".i3", ".ig", ".m3", ".mg"]
        case .moduleManagementSystem:
            return [".mms", ".mmk"]
        case .monkey:
            return [".monkey", ".monkey2"]
        case .monkeyC:
            return [".mc"]
        case .moocode:
            return [".moo"]
        case .moonscript:
            return [".moon"]
        case .motoko:
            return [".mo"]
        case .motorola68kAssembly:
            return [".asm", ".i", ".inc", ".s", ".x68"]
        case .move:
            return [".move"]
        case .muse:
            return [".muse"]
        case .mustache:
            return [".mustache"]
        case .myghty:
            return [".myt"]
        case .nasl:
            return [".nasl", ".inc"]
        case .ncl:
            return [".ncl"]
        case .neon:
            return [".neon"]
        case .nl:
            return [".nl"]
        case .nsis:
            return [".nsi", ".nsh"]
        case .nwscript:
            return [".nss"]
        case .nasal:
            return [".nas"]
        case .nearley:
            return [".ne", ".nearley"]
        case .nemerle:
            return [".n"]
        case .netlinx:
            return [".axs", ".axi"]
        case .netlinxErb:
            return [".axs.erb", ".axi.erb"]
        case .netlogo:
            return [".nlogo"]
        case .newlisp:
            return [".nl", ".lisp", ".lsp"]
        case .nextflow:
            return [".nf"]
        case .nginx:
            return [".nginx", ".nginxconf", ".vhost"]
        case .nim:
            return [".nim", ".nim.cfg", ".nimble", ".nimrod", ".nims"]
        case .ninja:
            return [".ninja"]
        case .nit:
            return [".nit"]
        case .nix:
            return [".nix"]
        case .nu:
            return [".nu"]
        case .numpy:
            return [".numpy", ".numpyw", ".numsc"]
        case .nunjucks:
            return [".njk"]
        case .nushell:
            return [".nu"]
        case .oasv2Json:
            return [".json"]
        case .oasv2Yaml:
            return [".yaml", ".yml"]
        case .oasv3Json:
            return [".json"]
        case .oasv3Yaml:
            return [".yaml", ".yml"]
        case .ocaml:
            return [".ml", ".eliom", ".eliomi", ".ml4", ".mli", ".mll", ".mly"]
        case .objdump:
            return [".objdump"]
        case .objectDataInstanceNotation:
            return [".odin"]
        case .objectscript:
            return [".cls"]
        case .objectiveC:
            return [".m", ".h"]
        case .objectiveCpp:
            return [".mm"]
        case .objectiveJ:
            return [".j", ".sj"]
        case .odin:
            return [".odin"]
        case .omgrofl:
            return [".omgrofl"]
        case .opa:
            return [".opa"]
        case .opal:
            return [".opal"]
        case .openPolicyAgent:
            return [".rego"]
        case .opencl:
            return [".cl", ".opencl"]
        case .openedgeAbl:
            return [".p", ".cls", ".w"]
        case .openqasm:
            return [".qasm"]
        case .openscad:
            return [".scad"]
        case .openstepPropertyList:
            return [".plist", ".glyphs"]
        case .opentypeFeatureFile:
            return [".fea"]
        case .org:
            return [".org"]
        case .ox:
            return [".ox", ".oxh", ".oxo"]
        case .oxygene:
            return [".oxygene"]
        case .oz:
            return [".oz"]
        case .p4:
            return [".p4"]
        case .pddl:
            return [".pddl"]
        case .pegJs:
            return [".pegjs"]
        case .php:
            return [".php", ".aw", ".ctp", ".fcgi", ".inc", ".php3", ".php4", ".php5", ".phps", ".phpt"]
        case .plsql:
            return [".pls", ".bdy", ".ddl", ".fnc", ".pck", ".pkb", ".pks", ".plb", ".plsql", ".prc", ".spc", ".sql", ".tpb", ".tps", ".trg", ".vw"]
        case .plpgsql:
            return [".pgsql", ".sql"]
        case .povRaySdl:
            return [".pov", ".inc"]
        case .pact:
            return [".pact"]
        case .pan:
            return [".pan"]
        case .papyrus:
            return [".psc"]
        case .parrot:
            return [".parrot"]
        case .parrotAssembly:
            return [".pasm"]
        case .parrotInternalRepresentation:
            return [".pir"]
        case .pascal:
            return [".pas", ".dfm", ".dpr", ".inc", ".lpr", ".pascal", ".pp"]
        case .pawn:
            return [".pwn", ".inc", ".sma"]
        case .pep8:
            return [".pep"]
        case .perl:
            return [".pl", ".al", ".cgi", ".fcgi", ".perl", ".ph", ".plx", ".pm", ".psgi", ".t"]
        case .pic:
            return [".pic", ".chem"]
        case .pickle:
            return [".pkl"]
        case .picolisp:
            return [".l"]
        case .piglatin:
            return [".pig"]
        case .pike:
            return [".pike", ".pmod"]
        case .plantuml:
            return [".puml", ".iuml", ".plantuml"]
        case .pod:
            return [".pod"]
        case .pod6:
            return [".pod", ".pod6"]
        case .pogoscript:
            return [".pogo"]
        case .polar:
            return [".polar"]
        case .pony:
            return [".pony"]
        case .portugol:
            return [".por"]
        case .postcss:
            return [".pcss", ".postcss"]
        case .postscript:
            return [".ps", ".eps", ".epsi", ".pfa"]
        case .powerbuilder:
            return [".pbt", ".sra", ".sru", ".srw"]
        case .powershell:
            return [".ps1", ".psd1", ".psm1"]
        case .prisma:
            return [".prisma"]
        case .processing:
            return [".pde"]
        case .proguard:
            return [".pro"]
        case .prolog:
            return [".pl", ".plt", ".pro", ".prolog", ".yap"]
        case .promela:
            return [".pml"]
        case .propellerSpin:
            return [".spin"]
        case .protocolBuffer:
            return [".proto"]
        case .protocolBufferTextFormat:
            return [".textproto", ".pbt", ".pbtxt"]
        case .publicKey:
            return [".asc", ".pub"]
        case .pug:
            return [".jade", ".pug"]
        case .puppet:
            return [".pp"]
        case .pureData:
            return [".pd"]
        case .purebasic:
            return [".pb", ".pbi"]
        case .purescript:
            return [".purs"]
        case .pyret:
            return [".arr"]
        case .python:
            return [".py", ".cgi", ".fcgi", ".gyp", ".gypi", ".lmi", ".py3", ".pyde", ".pyi", ".pyp", ".pyt", ".pyw", ".rpy", ".spec", ".tac", ".wsgi", ".xpy"]
        case .pythonTraceback:
            return [".pytb"]
        case .qsharp:
            return [".qs"]
        case .qml:
            return [".qml", ".qbs"]
        case .qmake:
            return [".pro", ".pri"]
        case .qtScript:
            return [".qs"]
        case .r:
            return [".r", ".rd", ".rsx"]
        case .raml:
            return [".raml"]
        case .rbs:
            return [".rbs"]
        case .rdoc:
            return [".rdoc"]
        case .realbasic:
            return [".rbbas", ".rbfrm", ".rbmnu", ".rbres", ".rbtbar", ".rbuistate"]
        case .rexx:
            return [".rexx", ".pprx", ".rex"]
        case .rmarkdown:
            return [".qmd", ".rmd"]
        case .rpc:
            return [".x"]
        case .rpgle:
            return [".rpgle", ".sqlrpgle"]
        case .rpmSpec:
            return [".spec"]
        case .runoff:
            return [".rnh", ".rno"]
        case .racket:
            return [".rkt", ".rktd", ".rktl", ".scrbl"]
        case .ragel:
            return [".rl"]
        case .raku:
            return [".6pl", ".6pm", ".nqp", ".p6", ".p6l", ".p6m", ".pl", ".pl6", ".pm", ".pm6", ".raku", ".rakumod", ".t"]
        case .rascal:
            return [".rsc"]
        case .rawTokenData:
            return [".raw"]
        case .rescript:
            return [".res"]
        case .reason:
            return [".re", ".rei"]
        case .reasonligo:
            return [".religo"]
        case .rebol:
            return [".reb", ".r", ".r2", ".r3", ".rebol"]
        case .red:
            return [".red", ".reds"]
        case .redcode:
            return [".cw"]
        case .regularExpression:
            return [".regexp", ".regex"]
        case .renPy:
            return [".rpy"]
        case .renderscript:
            return [".rs", ".rsh"]
        case .richTextFormat:
            return [".rtf"]
        case .ring:
            return [".ring"]
        case .riot:
            return [".riot"]
        case .robotframework:
            return [".robot"]
        case .roff:
            return [".roff", ".1", ".1in", ".1m", ".1x", ".2", ".3", ".3in", ".3m", ".3p", ".3pm", ".3qt", ".3x", ".4", ".5", ".6", ".7", ".8", ".9", ".l", ".man", ".mdoc", ".me", ".ms", ".n", ".nr", ".rno", ".tmac"]
        case .roffManpage:
            return [".1", ".1in", ".1m", ".1x", ".2", ".3", ".3in", ".3m", ".3p", ".3pm", ".3qt", ".3x", ".4", ".5", ".6", ".7", ".8", ".9", ".man", ".mdoc"]
        case .rouge:
            return [".rg"]
        case .routerosScript:
            return [".rsc"]
        case .ruby:
            return [".rb", ".builder", ".eye", ".fcgi", ".gemspec", ".god", ".jbuilder", ".mspec", ".pluginspec", ".podspec", ".prawn", ".rabl", ".rake", ".rbi", ".rbuild", ".rbw", ".rbx", ".ru", ".ruby", ".spec", ".thor", ".watchr"]
        case .rust:
            return [".rs", ".rs.in"]
        case .sas:
            return [".sas"]
        case .scss:
            return [".scss"]
        case .selinuxPolicy:
            return [".te"]
        case .smt:
            return [".smt2", ".smt"]
        case .sparql:
            return [".sparql", ".rq"]
        case .sqf:
            return [".sqf", ".hqf"]
        case .sql:
            return [".sql", ".cql", ".ddl", ".inc", ".mysql", ".prc", ".tab", ".udf", ".viw"]
        case .sqlpl:
            return [".sql", ".db2"]
        case .srecodeTemplate:
            return [".srt"]
        case .star:
            return [".star"]
        case .stl:
            return [".stl"]
        case .ston:
            return [".ston"]
        case .svg:
            return [".svg"]
        case .swig:
            return [".i"]
        case .sage:
            return [".sage", ".sagews"]
        case .saltstack:
            return [".sls"]
        case .sass:
            return [".sass"]
        case .scala:
            return [".scala", ".kojo", ".sbt", ".sc"]
        case .scaml:
            return [".scaml"]
        case .scenic:
            return [".scenic"]
        case .scheme:
            return [".scm", ".sch", ".sld", ".sls", ".sps", ".ss"]
        case .scilab:
            return [".sci", ".sce", ".tst"]
        case .self:
            return [".self"]
        case .shaderlab:
            return [".shader"]
        case .shell:
            return [".sh", ".bash", ".bats", ".cgi", ".command", ".fcgi", ".ksh", ".sh.in", ".tmux", ".tool", ".trigger", ".zsh", ".zsh-theme"]
        case .shellsession:
            return [".sh-session"]
        case .shen:
            return [".shen"]
        case .sieve:
            return [".sieve"]
        case .simpleFileVerification:
            return [".sfv"]
        case .slash:
            return [".sl"]
        case .slice:
            return [".ice"]
        case .slim:
            return [".slim"]
        case .smpl:
            return [".cocci"]
        case .smali:
            return [".smali"]
        case .smalltalk:
            return [".st", ".cs"]
        case .smarty:
            return [".tpl"]
        case .smithy:
            return [".smithy"]
        case .snakemake:
            return [".smk", ".snakefile"]
        case .solidity:
            return [".sol"]
        case .sourcepawn:
            return [".sp", ".inc"]
        case .splineFontDatabase:
            return [".sfd"]
        case .squirrel:
            return [".nut"]
        case .stan:
            return [".stan"]
        case .standardMl:
            return [".ml", ".fun", ".sig", ".sml"]
        case .starlark:
            return [".bzl", ".star"]
        case .stata:
            return [".do", ".ado", ".doh", ".ihlp", ".mata", ".matah", ".sthlp"]
        case .stringtemplate:
            return [".st"]
        case .stylus:
            return [".styl"]
        case .subripText:
            return [".srt"]
        case .sugarss:
            return [".sss"]
        case .supercollider:
            return [".sc", ".scd"]
        case .svelte:
            return [".svelte"]
        case .sway:
            return [".sw"]
        case .swift:
            return [".swift"]
        case .systemverilog:
            return [".sv", ".svh", ".vh"]
        case .tiProgram:
            return [".8xp", ".8xk", ".8xk.txt", ".8xp.txt"]
        case .tlVerilog:
            return [".tlv"]
        case .tla:
            return [".tla"]
        case .toml:
            return [".toml"]
        case .tsql:
            return [".sql"]
        case .tsv:
            return [".tsv"]
        case .tsx:
            return [".tsx"]
        case .txl:
            return [".txl"]
        case .talon:
            return [".talon"]
        case .tcl:
            return [".tcl", ".adp", ".sdc", ".tcl.in", ".tm", ".xdc"]
        case .tcsh:
            return [".tcsh", ".csh"]
        case .tex:
            return [".tex", ".aux", ".bbx", ".cbx", ".cls", ".dtx", ".ins", ".lbx", ".ltx", ".mkii", ".mkiv", ".mkvi", ".sty", ".toc"]
        case .tea:
            return [".tea"]
        case .terra:
            return [".t"]
        case .texinfo:
            return [".texinfo", ".texi", ".txi"]
        case .text:
            return [".txt", ".fr", ".nb", ".ncl", ".no"]
        case .textile:
            return [".textile"]
        case .thrift:
            return [".thrift"]
        case .turing:
            return [".t", ".tu"]
        case .turtle:
            return [".ttl"]
        case .twig:
            return [".twig"]
        case .typeLanguage:
            return [".tl"]
        case .typescript:
            return [".ts", ".cts", ".mts"]
        case .unifiedParallelC:
            return [".upc"]
        case .unity3dAsset:
            return [".anim", ".asset", ".mask", ".mat", ".meta", ".prefab", ".unity"]
        case .unixAssembly:
            return [".s", ".ms"]
        case .uno:
            return [".uno"]
        case .unrealscript:
            return [".uc"]
        case .urweb:
            return [".ur", ".urs"]
        case .v:
            return [".v"]
        case .vba:
            return [".bas", ".cls", ".frm", ".vba"]
        case .vbscript:
            return [".vbs"]
        case .vcl:
            return [".vcl"]
        case .vhdl:
            return [".vhdl", ".vhd", ".vhf", ".vhi", ".vho", ".vhs", ".vht", ".vhw"]
        case .vala:
            return [".vala", ".vapi"]
        case .valveDataFormat:
            return [".vdf"]
        case .velocityTemplateLanguage:
            return [".vtl"]
        case .verilog:
            return [".v", ".veo"]
        case .vimHelpFile:
            return [".txt"]
        case .vimScript:
            return [".vim", ".vba", ".vimrc", ".vmb"]
        case .vimSnippet:
            return [".snip", ".snippet", ".snippets"]
        case .visualBasicNet:
            return [".vb", ".vbhtml"]
        case .visualBasic60:
            return [".bas", ".cls", ".ctl", ".Dsr", ".frm"]
        case .volt:
            return [".volt"]
        case .vue:
            return [".vue"]
        case .vyper:
            return [".vy"]
        case .wdl:
            return [".wdl"]
        case .wgsl:
            return [".wgsl"]
        case .wavefrontMaterial:
            return [".mtl"]
        case .wavefrontObject:
            return [".obj"]
        case .webOntologyLanguage:
            return [".owl"]
        case .webassembly:
            return [".wast", ".wat"]
        case .webassemblyInterfaceType:
            return [".wit"]
        case .webidl:
            return [".webidl"]
        case .webvtt:
            return [".vtt"]
        case .whiley:
            return [".whiley"]
        case .wikitext:
            return [".mediawiki", ".wiki", ".wikitext"]
        case .win32MessageFile:
            return [".mc"]
        case .windowsRegistryEntries:
            return [".reg"]
        case .witcherScript:
            return [".ws"]
        case .wollok:
            return [".wlk"]
        case .worldOfWarcraftAddonData:
            return [".toc"]
        case .wren:
            return [".wren"]
        case .xBitmap:
            return [".xbm"]
        case .xPixmap:
            return [".xpm", ".pm"]
        case .x10:
            return [".x10"]
        case .xc:
            return [".xc"]
        case .xml:
            return [".xml", ".adml", ".admx", ".ant", ".axaml", ".axml", ".builds", ".ccproj", ".ccxml", ".clixml", ".cproject", ".cscfg", ".csdef", ".csl", ".csproj", ".ct", ".depproj", ".dita", ".ditamap", ".ditaval", ".dll.config", ".dotsettings", ".filters", ".fsproj", ".fxml", ".glade", ".gml", ".gmx", ".grxml", ".gst", ".hzp", ".iml", ".ivy", ".jelly", ".jsproj", ".kml", ".launch", ".mdpolicy", ".mjml", ".mm", ".mod", ".mxml", ".natvis", ".ncl", ".ndproj", ".nproj", ".nuspec", ".odd", ".osm", ".pkgproj", ".pluginspec", ".proj", ".props", ".ps1xml", ".psc1", ".pt", ".qhelp", ".rdf", ".res", ".resx", ".rs", ".rss", ".sch", ".scxml", ".sfproj", ".shproj", ".srdf", ".storyboard", ".sublime-snippet", ".sw", ".targets", ".tml", ".ts", ".tsx", ".ui", ".urdf", ".ux", ".vbproj", ".vcxproj", ".vsixmanifest", ".vssettings", ".vstemplate", ".vxml", ".wixproj", ".workflow", ".wsdl", ".wsf", ".wxi", ".wxl", ".wxs", ".x3d", ".xacro", ".xaml", ".xib", ".xlf", ".xliff", ".xmi", ".xml.dist", ".xmp", ".xproj", ".xsd", ".xspec", ".xul", ".zcml"]
        case .xmlPropertyList:
            return [".plist", ".stTheme", ".tmCommand", ".tmLanguage", ".tmPreferences", ".tmSnippet", ".tmTheme"]
        case .xpages:
            return [".xsp-config", ".xsp.metadata"]
        case .xproc:
            return [".xpl", ".xproc"]
        case .xquery:
            return [".xquery", ".xq", ".xql", ".xqm", ".xqy"]
        case .xs:
            return [".xs"]
        case .xslt:
            return [".xslt", ".xsl"]
        case .xojo:
            return [".xojo_code", ".xojo_menu", ".xojo_report", ".xojo_script", ".xojo_toolbar", ".xojo_window"]
        case .xonsh:
            return [".xsh"]
        case .xtend:
            return [".xtend"]
        case .yaml:
            return [".yml", ".mir", ".reek", ".rviz", ".sublime-syntax", ".syntax", ".yaml", ".yaml-tmlanguage", ".yaml.sed", ".yml.mysql"]
        case .yang:
            return [".yang"]
        case .yara:
            return [".yar", ".yara"]
        case .yasnippet:
            return [".yasnippet"]
        case .yacc:
            return [".y", ".yacc", ".yy"]
        case .yul:
            return [".yul"]
        case .zap:
            return [".zap", ".xzap"]
        case .zil:
            return [".zil", ".mud"]
        case .zeek:
            return [".zeek", ".bro"]
        case .zenscript:
            return [".zs"]
        case .zephir:
            return [".zep"]
        case .zig:
            return [".zig"]
        case .zimpl:
            return [".zimpl", ".zmpl", ".zpl"]
        case .desktop:
            return [".desktop", ".desktop.in", ".service"]
        case .dircolors:
            return [".dircolors"]
        case .ec:
            return [".ec", ".eh"]
        case .edn:
            return [".edn"]
        case .fish:
            return [".fish"]
        case .hoon:
            return [".hoon"]
        case .jq:
            return [".jq"]
        case .kvlang:
            return [".kv"]
        case .mircScript:
            return [".mrc"]
        case .mcfunction:
            return [".mcfunction"]
        case .mupad:
            return [".mu"]
        case .nanorc:
            return [".nanorc"]
        case .nesc:
            return [".nc"]
        case .ooc:
            return [".ooc"]
        case .q:
            return [".q"]
        case .restructuredtext:
            return [".rst", ".rest", ".rest.txt", ".rst.txt"]
        case .sed:
            return [".sed"]
        case .wisp:
            return [".wisp"]
        case .xbase:
            return [".prg", ".ch", ".prw"]
        default:
            return []
        }
    }
    public var tmScope: String {
        switch self {
        case ._1cEnterprise:
            return "source.bsl"
        case ._2DimensionalArray:
            return "source.2da"
        case ._4d:
            return "source.4dm"
        case .abap:
            return "source.abap"
        case .abapCds:
            return "source.abapcds"
        case .abnf:
            return "source.abnf"
        case .agsScript:
            return "source.c++"
        case .aidl:
            return "source.aidl"
        case .al:
            return "source.al"
        case .ampl:
            return "source.ampl"
        case .antlr:
            return "source.antlr"
        case .apiBlueprint:
            return "text.html.markdown.source.gfm.apib"
        case .apl:
            return "source.apl"
        case .asl:
            return "source.asl"
        case .asn1:
            return "source.asn"
        case .aspNet:
            return "text.html.asp"
        case .ats:
            return "source.ats"
        case .actionscript:
            return "source.actionscript.3"
        case .ada:
            return "source.ada"
        case .adblockFilterList:
            return "text.adblock"
        case .adobeFontMetrics:
            return "source.afm"
        case .agda:
            return "source.agda"
        case .alloy:
            return "source.alloy"
        case .alpineAbuild:
            return "source.shell"
        case .altiumDesigner:
            return "source.ini"
        case .angelscript:
            return "source.angelscript"
        case .antBuildSystem:
            return "text.xml.ant"
        case .antlers:
            return "text.html.statamic"
        case .apacheconf:
            return "source.apache-config"
        case .apex:
            return "source.apex"
        case .apolloGuidanceComputer:
            return "source.agc"
        case .applescript:
            return "source.applescript"
        case .arc:
            return "none"
        case .asciidoc:
            return "text.html.asciidoc"
        case .aspectj:
            return "source.aspectj"
        case .assembly:
            return "source.assembly"
        case .astro:
            return "source.astro"
        case .asymptote:
            return "source.c++"
        case .augeas:
            return "none"
        case .autohotkey:
            return "source.ahk"
        case .autoit:
            return "source.autoit"
        case .avroIdl:
            return "source.avro"
        case .awk:
            return "source.awk"
        case .basic:
            return "source.basic"
        case .ballerina:
            return "source.ballerina"
        case .batchfile:
            return "source.batchfile"
        case .beef:
            return "source.cs"
        case .befunge:
            return "source.befunge"
        case .berry:
            return "source.berry"
        case .bibtex:
            return "text.bibtex"
        case .bicep:
            return "source.bicep"
        case .bikeshed:
            return "source.csswg"
        case .bison:
            return "source.yacc"
        case .bitbake:
            return "none"
        case .blade:
            return "text.html.php.blade"
        case .blitzbasic:
            return "source.blitzmax"
        case .blitzmax:
            return "source.blitzmax"
        case .bluespec:
            return "source.bsv"
        case .boo:
            return "source.boo"
        case .boogie:
            return "source.boogie"
        case .brainfuck:
            return "source.bf"
        case .brighterscript:
            return "source.brs"
        case .brightscript:
            return "source.brs"
        case .browserslist:
            return "text.browserslist"
        case .c:
            return "source.c"
        case .csharp:
            return "source.cs"
        case .cpp:
            return "source.c++"
        case .cObjdump:
            return "objdump.x86asm"
        case .c2hsHaskell:
            return "source.haskell"
        case .capCds:
            return "source.cds"
        case .cil:
            return "source.cil"
        case .clips:
            return "source.clips"
        case .cmake:
            return "source.cmake"
        case .cobol:
            return "source.cobol"
        case .codeowners:
            return "text.codeowners"
        case .collada:
            return "text.xml"
        case .cson:
            return "source.coffee"
        case .css:
            return "source.css"
        case .csv:
            return "none"
        case .cue:
            return "source.cue"
        case .cweb:
            return "none"
        case .cabalConfig:
            return "source.cabal"
        case .cadence:
            return "source.cadence"
        case .cairo:
            return "source.cairo"
        case .cameligo:
            return "source.mligo"
        case .capNProto:
            return "source.capnp"
        case .cartocss:
            return "source.css.mss"
        case .ceylon:
            return "source.ceylon"
        case .chapel:
            return "source.chapel"
        case .charity:
            return "none"
        case .checksums:
            return "text.checksums"
        case .chuck:
            return "source.java"
        case .circom:
            return "source.circom"
        case .cirru:
            return "source.cirru"
        case .clarion:
            return "source.clarion"
        case .clarity:
            return "source.clar"
        case .classicAsp:
            return "text.html.asp"
        case .clean:
            return "source.clean"
        case .click:
            return "source.click"
        case .clojure:
            return "source.clojure"
        case .closureTemplates:
            return "text.html.soy"
        case .cloudFirestoreSecurityRules:
            return "source.firestore"
        case .conllU:
            return "text.conllu"
        case .codeql:
            return "source.ql"
        case .coffeescript:
            return "source.coffee"
        case .coldfusion:
            return "text.html.cfm"
        case .coldfusionCfc:
            return "source.cfscript"
        case .commonLisp:
            return "source.lisp"
        case .commonWorkflowLanguage:
            return "source.cwl"
        case .componentPascal:
            return "source.pascal"
        case .cool:
            return "source.cool"
        case .coq:
            return "source.coq"
        case .cppObjdump:
            return "objdump.x86asm"
        case .creole:
            return "text.html.creole"
        case .crystal:
            return "source.crystal"
        case .csound:
            return "source.csound"
        case .csoundDocument:
            return "source.csound-document"
        case .csoundScore:
            return "source.csound-score"
        case .cuda:
            return "source.cuda-c++"
        case .cueSheet:
            return "source.cuesheet"
        case .curry:
            return "source.curry"
        case .cycript:
            return "source.js"
        case .cypher:
            return "source.cypher"
        case .cython:
            return "source.cython"
        case .d:
            return "source.d"
        case .dObjdump:
            return "objdump.x86asm"
        case .d2:
            return "source.d2"
        case .digitalCommandLanguage:
            return "none"
        case .dm:
            return "source.dm"
        case .dnsZone:
            return "text.zone_file"
        case .dtrace:
            return "source.c"
        case .dafny:
            return "text.dfy.dafny"
        case .darcsPatch:
            return "none"
        case .dart:
            return "source.dart"
        case .dataweave:
            return "source.data-weave"
        case .debianPackageControlFile:
            return "source.deb-control"
        case .denizenscript:
            return "source.denizenscript"
        case .dhall:
            return "source.haskell"
        case .diff:
            return "source.diff"
        case .directx3dFile:
            return "none"
        case .dockerfile:
            return "source.dockerfile"
        case .dogescript:
            return "none"
        case .dotenv:
            return "source.dotenv"
        case .dylan:
            return "source.dylan"
        case .e:
            return "none"
        case .eMail:
            return "text.eml.basic"
        case .ebnf:
            return "source.ebnf"
        case .ecl:
            return "source.ecl"
        case .eclipse:
            return "source.prolog.eclipse"
        case .ejs:
            return "text.html.js"
        case .eq:
            return "source.cs"
        case .eagle:
            return "text.xml"
        case .earthly:
            return "source.earthfile"
        case .easybuild:
            return "source.python"
        case .ecereProjects:
            return "source.json"
        case .ecmarkup:
            return "text.html.ecmarkup"
        case .editorconfig:
            return "source.editorconfig"
        case .edjeDataCollection:
            return "source.c++"
        case .eiffel:
            return "source.eiffel"
        case .elixir:
            return "source.elixir"
        case .elm:
            return "source.elm"
        case .elvish:
            return "source.elvish"
        case .elvishTranscript:
            return "source.elvish-transcript"
        case .emacsLisp:
            return "source.emacs.lisp"
        case .emberscript:
            return "source.coffee"
        case .erlang:
            return "source.erlang"
        case .euphoria:
            return "source.euphoria"
        case .fsharp:
            return "source.fsharp"
        case .f2:
            return "source.fstar"
        case .figletFont:
            return "source.figfont"
        case .flux:
            return "none"
        case .factor:
            return "source.factor"
        case .fancy:
            return "source.fancy"
        case .fantom:
            return "source.fan"
        case .faust:
            return "source.faust"
        case .fennel:
            return "source.fnl"
        case .filebenchWml:
            return "none"
        case .filterscript:
            return "none"
        case .fluent:
            return "source.ftl"
        case .formatted:
            return "none"
        case .forth:
            return "source.forth"
        case .fortran:
            return "source.fortran"
        case .fortranFreeForm:
            return "source.fortran.modern"
        case .freebasic:
            return "source.vbnet"
        case .freemarker:
            return "text.html.ftl"
        case .frege:
            return "source.haskell"
        case .futhark:
            return "source.futhark"
        case .gCode:
            return "source.gcode"
        case .gaml:
            return "none"
        case .gams:
            return "none"
        case .gap:
            return "source.gap"
        case .gccMachineDescription:
            return "source.lisp"
        case .gdb:
            return "source.gdb"
        case .gdscript:
            return "source.gdscript"
        case .gedcom:
            return "source.gedcom"
        case .glsl:
            return "source.glsl"
        case .gn:
            return "source.gn"
        case .gsc:
            return "source.gsc"
        case .gameMakerLanguage:
            return "source.c++"
        case .gemfileLock:
            return "source.gemfile-lock"
        case .gemini:
            return "source.gemini"
        case .genero:
            return "source.genero"
        case .generoForms:
            return "source.genero-forms"
        case .genie:
            return "none"
        case .genshi:
            return "text.xml.genshi"
        case .gentooEbuild:
            return "source.shell"
        case .gentooEclass:
            return "source.shell"
        case .gerberImage:
            return "source.gerber"
        case .gettextCatalog:
            return "source.po"
        case .gherkin:
            return "text.gherkin.feature"
        case .gitAttributes:
            return "source.gitattributes"
        case .gitConfig:
            return "source.gitconfig"
        case .gitRevisionList:
            return "source.git-revlist"
        case .gleam:
            return "source.gleam"
        case .glyph:
            return "source.tcl"
        case .glyphBitmapDistributionFormat:
            return "source.bdf"
        case .gnuplot:
            return "source.gnuplot"
        case .go:
            return "source.go"
        case .goChecksums:
            return "go.sum"
        case .goModule:
            return "go.mod"
        case .goWorkspace:
            return "go.mod"
        case .godotResource:
            return "source.gdresource"
        case .golo:
            return "source.golo"
        case .gosu:
            return "source.gosu.2"
        case .grace:
            return "source.grace"
        case .gradle:
            return "source.groovy.gradle"
        case .grammaticalFramework:
            return "source.gf"
        case .graphModelingLanguage:
            return "none"
        case .graphql:
            return "source.graphql"
        case .graphvizDot:
            return "source.dot"
        case .groovy:
            return "source.groovy"
        case .groovyServerPages:
            return "text.html.jsp"
        case .haproxy:
            return "source.haproxy-config"
        case .hcl:
            return "source.terraform"
        case .hlsl:
            return "source.hlsl"
        case .hocon:
            return "source.hocon"
        case .html:
            return "text.html.basic"
        case .htmlEcr:
            return "text.html.ecr"
        case .htmlEex:
            return "text.html.elixir"
        case .htmlErb:
            return "text.html.erb"
        case .htmlPhp:
            return "text.html.php"
        case .htmlRazor:
            return "text.html.cshtml"
        case .http:
            return "source.httpspec"
        case .hxml:
            return "source.hxml"
        case .hack:
            return "source.hack"
        case .haml:
            return "text.haml"
        case .handlebars:
            return "text.html.handlebars"
        case .harbour:
            return "source.harbour"
        case .haskell:
            return "source.haskell"
        case .haxe:
            return "source.hx"
        case .hiveql:
            return "source.hql"
        case .holyc:
            return "source.hc"
        case .hostsFile:
            return "source.hosts"
        case .hy:
            return "source.hy"
        case .hyphy:
            return "none"
        case .idl:
            return "source.idl"
        case .igorPro:
            return "source.igor"
        case .ini:
            return "source.ini"
        case .ircLog:
            return "none"
        case .idris:
            return "source.idris"
        case .ignoreList:
            return "source.gitignore"
        case .imagejMacro:
            return "none"
        case .imba:
            return "source.imba"
        case .inform7:
            return "source.inform7"
        case .ink:
            return "source.ink"
        case .innoSetup:
            return "source.inno"
        case .io:
            return "source.io"
        case .ioke:
            return "source.ioke"
        case .isabelle:
            return "source.isabelle.theory"
        case .isabelleRoot:
            return "source.isabelle.root"
        case .j:
            return "source.j"
        case .jarManifest:
            return "source.yaml"
        case .jcl:
            return "source.jcl"
        case .jflex:
            return "source.jflex"
        case .json:
            return "source.json"
        case .jsonWithComments:
            return "source.js"
        case .json5:
            return "source.js"
        case .jsonld:
            return "source.js"
        case .jsoniq:
            return "source.jsoniq"
        case .janet:
            return "source.janet"
        case .jasmin:
            return "source.jasmin"
        case .java:
            return "source.java"
        case .javaProperties:
            return "source.java-properties"
        case .javaServerPages:
            return "text.html.jsp"
        case .javascript:
            return "source.js"
        case .javascriptErb:
            return "source.js"
        case .jestSnapshot:
            return "source.jest.snap"
        case .jetbrainsMps:
            return "none"
        case .jinja:
            return "text.html.django"
        case .jison:
            return "source.jison"
        case .jisonLex:
            return "source.jisonlex"
        case .jolie:
            return "source.jolie"
        case .jsonnet:
            return "source.jsonnet"
        case .julia:
            return "source.julia"
        case .jupyterNotebook:
            return "source.json"
        case .just:
            return "source.just"
        case .krl:
            return "none"
        case .kaitaiStruct:
            return "source.yaml"
        case .kakounescript:
            return "source.kakscript"
        case .kerboscript:
            return "source.kerboscript"
        case .kicadLayout:
            return "source.pcb.sexp"
        case .kicadLegacyLayout:
            return "source.pcb.board"
        case .kicadSchematic:
            return "source.pcb.schematic"
        case .kickstart:
            return "source.kickstart"
        case .kit:
            return "text.html.basic"
        case .kotlin:
            return "source.kotlin"
        case .kusto:
            return "source.kusto"
        case .lfe:
            return "source.lisp"
        case .llvm:
            return "source.llvm"
        case .lolcode:
            return "source.lolcode"
        case .lsl:
            return "source.lsl"
        case .ltspiceSymbol:
            return "source.ltspice.symbol"
        case .labview:
            return "text.xml"
        case .lark:
            return "source.lark"
        case .lasso:
            return "file.lasso"
        case .latte:
            return "text.html.smarty"
        case .lean:
            return "source.lean"
        case .less:
            return "source.css.less"
        case .lex:
            return "source.lex"
        case .ligolang:
            return "source.ligo"
        case .lilypond:
            return "source.lilypond"
        case .limbo:
            return "none"
        case .linkerScript:
            return "none"
        case .linuxKernelModule:
            return "none"
        case .liquid:
            return "text.html.liquid"
        case .literateAgda:
            return "none"
        case .literateCoffeescript:
            return "source.litcoffee"
        case .literateHaskell:
            return "text.tex.latex.haskell"
        case .livescript:
            return "source.livescript"
        case .logos:
            return "source.logos"
        case .logtalk:
            return "source.logtalk"
        case .lookml:
            return "source.yaml"
        case .loomscript:
            return "source.loomscript"
        case .lua:
            return "source.lua"
        case .m:
            return "none"
        case .m4:
            return "source.m4"
        case .m4sugar:
            return "source.m4"
        case .matlab:
            return "source.matlab"
        case .maxscript:
            return "source.maxscript"
        case .mdx:
            return "source.mdx"
        case .mlir:
            return "source.mlir"
        case .mql4:
            return "source.mql5"
        case .mql5:
            return "source.mql5"
        case .mtml:
            return "text.html.basic"
        case .muf:
            return "none"
        case .macaulay2:
            return "source.m2"
        case .makefile:
            return "source.makefile"
        case .mako:
            return "text.html.mako"
        case .markdown:
            return "text.md"
        case .marko:
            return "text.marko"
        case .mask:
            return "source.mask"
        case .mathematica:
            return "source.mathematica"
        case .mavenPom:
            return "text.xml.pom"
        case .max:
            return "source.json"
        case .mercury:
            return "source.mercury"
        case .mermaid:
            return "source.mermaid"
        case .meson:
            return "source.meson"
        case .metal:
            return "source.c++"
        case .microsoftDeveloperStudioProject:
            return "none"
        case .microsoftVisualStudioSolution:
            return "source.solution"
        case .minid:
            return "none"
        case .miniyaml:
            return "source.miniyaml"
        case .mint:
            return "source.mint"
        case .mirah:
            return "source.ruby"
        case .modelica:
            return "source.modelica"
        case .modula2:
            return "source.modula2"
        case .modula3:
            return "source.modula-3"
        case .moduleManagementSystem:
            return "none"
        case .monkey:
            return "source.monkey"
        case .monkeyC:
            return "source.mc"
        case .moocode:
            return "none"
        case .moonscript:
            return "source.moonscript"
        case .motoko:
            return "source.mo"
        case .motorola68kAssembly:
            return "source.m68k"
        case .move:
            return "source.move"
        case .muse:
            return "text.muse"
        case .mustache:
            return "text.html.smarty"
        case .myghty:
            return "none"
        case .nasl:
            return "source.nasl"
        case .ncl:
            return "source.ncl"
        case .neon:
            return "source.neon"
        case .nl:
            return "none"
        case .npmConfig:
            return "source.ini.npmrc"
        case .nsis:
            return "source.nsis"
        case .nwscript:
            return "source.c.nwscript"
        case .nasal:
            return "source.nasal"
        case .nearley:
            return "source.ne"
        case .nemerle:
            return "source.nemerle"
        case .netlinx:
            return "source.netlinx"
        case .netlinxErb:
            return "source.netlinx.erb"
        case .netlogo:
            return "source.lisp"
        case .newlisp:
            return "source.lisp"
        case .nextflow:
            return "source.nextflow"
        case .nginx:
            return "source.nginx"
        case .nim:
            return "source.nim"
        case .ninja:
            return "source.ninja"
        case .nit:
            return "source.nit"
        case .nix:
            return "source.nix"
        case .nu:
            return "source.nu"
        case .numpy:
            return "none"
        case .nunjucks:
            return "text.html.nunjucks"
        case .nushell:
            return "source.nushell"
        case .oasv2Json:
            return "source.json"
        case .oasv2Yaml:
            return "source.yaml"
        case .oasv3Json:
            return "source.json"
        case .oasv3Yaml:
            return "source.yaml"
        case .ocaml:
            return "source.ocaml"
        case .objdump:
            return "objdump.x86asm"
        case .objectDataInstanceNotation:
            return "source.odin-ehr"
        case .objectscript:
            return "source.objectscript"
        case .objectiveC:
            return "source.objc"
        case .objectiveCpp:
            return "source.objc++"
        case .objectiveJ:
            return "source.js.objj"
        case .odin:
            return "source.odin"
        case .omgrofl:
            return "none"
        case .opa:
            return "source.opa"
        case .opal:
            return "source.opal"
        case .openPolicyAgent:
            return "source.rego"
        case .openapiSpecificationV2:
            return "none"
        case .openapiSpecificationV3:
            return "none"
        case .opencl:
            return "source.c"
        case .openedgeAbl:
            return "source.abl"
        case .openqasm:
            return "source.qasm"
        case .openrcRunscript:
            return "source.shell"
        case .openscad:
            return "source.scad"
        case .openstepPropertyList:
            return "source.plist"
        case .opentypeFeatureFile:
            return "source.opentype"
        case .optionList:
            return "source.opts"
        case .org:
            return "none"
        case .ox:
            return "source.ox"
        case .oxygene:
            return "none"
        case .oz:
            return "source.oz"
        case .p4:
            return "source.p4"
        case .pddl:
            return "source.pddl"
        case .pegJs:
            return "source.pegjs"
        case .php:
            return "text.html.php"
        case .plsql:
            return "none"
        case .plpgsql:
            return "source.sql"
        case .povRaySdl:
            return "source.pov-ray sdl"
        case .pact:
            return "source.pact"
        case .pan:
            return "source.pan"
        case .papyrus:
            return "source.papyrus.skyrim"
        case .parrot:
            return "none"
        case .parrotAssembly:
            return "none"
        case .parrotInternalRepresentation:
            return "source.parrot.pir"
        case .pascal:
            return "source.pascal"
        case .pawn:
            return "source.pawn"
        case .pep8:
            return "source.pep8"
        case .perl:
            return "source.perl"
        case .pic:
            return "source.pic"
        case .pickle:
            return "none"
        case .picolisp:
            return "source.lisp"
        case .piglatin:
            return "source.pig_latin"
        case .pike:
            return "source.pike"
        case .plantuml:
            return "source.wsd"
        case .pod:
            return "none"
        case .pod6:
            return "source.raku"
        case .pogoscript:
            return "source.pogoscript"
        case .polar:
            return "source.polar"
        case .pony:
            return "source.pony"
        case .portugol:
            return "source.portugol"
        case .postcss:
            return "source.postcss"
        case .postscript:
            return "source.postscript"
        case .powerbuilder:
            return "none"
        case .powershell:
            return "source.powershell"
        case .prisma:
            return "source.prisma"
        case .processing:
            return "source.processing"
        case .procfile:
            return "source.procfile"
        case .proguard:
            return "none"
        case .prolog:
            return "source.prolog"
        case .promela:
            return "source.promela"
        case .propellerSpin:
            return "source.spin"
        case .protocolBuffer:
            return "source.proto"
        case .protocolBufferTextFormat:
            return "source.textproto"
        case .publicKey:
            return "none"
        case .pug:
            return "text.jade"
        case .puppet:
            return "source.puppet"
        case .pureData:
            return "none"
        case .purebasic:
            return "none"
        case .purescript:
            return "source.purescript"
        case .pyret:
            return "source.arr"
        case .python:
            return "source.python"
        case .pythonConsole:
            return "text.python.console"
        case .pythonTraceback:
            return "text.python.traceback"
        case .qsharp:
            return "source.qsharp"
        case .qml:
            return "source.qml"
        case .qmake:
            return "source.qmake"
        case .qtScript:
            return "source.js"
        case .quake:
            return "source.quake"
        case .r:
            return "source.r"
        case .raml:
            return "source.yaml"
        case .rbs:
            return "source.rbs"
        case .rdoc:
            return "text.rdoc"
        case .realbasic:
            return "source.vbnet"
        case .rexx:
            return "source.rexx"
        case .rmarkdown:
            return "text.md"
        case .rpc:
            return "source.c"
        case .rpgle:
            return "source.rpgle"
        case .rpmSpec:
            return "source.rpm-spec"
        case .runoff:
            return "text.runoff"
        case .racket:
            return "source.racket"
        case .ragel:
            return "none"
        case .raku:
            return "source.raku"
        case .rascal:
            return "source.rascal"
        case .rawTokenData:
            return "none"
        case .rescript:
            return "source.rescript"
        case .readlineConfig:
            return "source.inputrc"
        case .reason:
            return "source.reason"
        case .reasonligo:
            return "source.religo"
        case .rebol:
            return "source.rebol"
        case .recordJar:
            return "source.record-jar"
        case .red:
            return "source.red"
        case .redcode:
            return "none"
        case .redirectRules:
            return "source.redirects"
        case .regularExpression:
            return "source.regexp"
        case .renPy:
            return "source.renpy"
        case .renderscript:
            return "none"
        case .richTextFormat:
            return "text.rtf"
        case .ring:
            return "source.ring"
        case .riot:
            return "text.html.riot"
        case .robotframework:
            return "text.robot"
        case .roff:
            return "text.roff"
        case .roffManpage:
            return "text.roff"
        case .rouge:
            return "source.clojure"
        case .routerosScript:
            return "none"
        case .ruby:
            return "source.ruby"
        case .rust:
            return "source.rust"
        case .sas:
            return "source.sas"
        case .scss:
            return "source.css.scss"
        case .selinuxPolicy:
            return "source.sepolicy"
        case .smt:
            return "source.smt"
        case .sparql:
            return "source.sparql"
        case .sqf:
            return "source.sqf"
        case .sql:
            return "source.sql"
        case .sqlpl:
            return "source.sql"
        case .srecodeTemplate:
            return "source.lisp"
        case .sshConfig:
            return "source.ssh-config"
        case .star:
            return "source.star"
        case .stl:
            return "source.stl"
        case .ston:
            return "source.smalltalk"
        case .svg:
            return "text.xml.svg"
        case .swig:
            return "source.c++"
        case .sage:
            return "source.python"
        case .saltstack:
            return "source.yaml.salt"
        case .sass:
            return "source.sass"
        case .scala:
            return "source.scala"
        case .scaml:
            return "source.scaml"
        case .scenic:
            return "source.scenic"
        case .scheme:
            return "source.scheme"
        case .scilab:
            return "source.scilab"
        case .self:
            return "none"
        case .shaderlab:
            return "source.shaderlab"
        case .shell:
            return "source.shell"
        case .shellcheckConfig:
            return "source.shellcheckrc"
        case .shellsession:
            return "text.shell-session"
        case .shen:
            return "source.shen"
        case .sieve:
            return "source.sieve"
        case .simpleFileVerification:
            return "source.sfv"
        case .singularity:
            return "source.singularity"
        case .slash:
            return "text.html.slash"
        case .slice:
            return "source.slice"
        case .slim:
            return "text.slim"
        case .smpl:
            return "source.smpl"
        case .smali:
            return "source.smali"
        case .smalltalk:
            return "source.smalltalk"
        case .smarty:
            return "text.html.smarty"
        case .smithy:
            return "source.smithy"
        case .snakemake:
            return "source.python"
        case .solidity:
            return "source.solidity"
        case .soong:
            return "source.bp"
        case .sourcepawn:
            return "source.sourcepawn"
        case .splineFontDatabase:
            return "text.sfd"
        case .squirrel:
            return "source.nut"
        case .stan:
            return "source.stan"
        case .standardMl:
            return "source.ml"
        case .starlark:
            return "source.python"
        case .stata:
            return "source.stata"
        case .stringtemplate:
            return "source.string-template"
        case .stylus:
            return "source.stylus"
        case .subripText:
            return "text.srt"
        case .sugarss:
            return "source.css.postcss.sugarss"
        case .supercollider:
            return "source.supercollider"
        case .svelte:
            return "source.svelte"
        case .sway:
            return "source.sway"
        case .swift:
            return "source.swift"
        case .systemverilog:
            return "source.systemverilog"
        case .tiProgram:
            return "none"
        case .tlVerilog:
            return "source.tlverilog"
        case .tla:
            return "source.tla"
        case .toml:
            return "source.toml"
        case .tsql:
            return "source.tsql"
        case .tsv:
            return "source.generic-db"
        case .tsx:
            return "source.tsx"
        case .txl:
            return "source.txl"
        case .talon:
            return "source.talon"
        case .tcl:
            return "source.tcl"
        case .tcsh:
            return "source.shell"
        case .tex:
            return "text.tex.latex"
        case .tea:
            return "source.tea"
        case .terra:
            return "source.terra"
        case .texinfo:
            return "text.texinfo"
        case .text:
            return "none"
        case .textmateProperties:
            return "source.tm-properties"
        case .textile:
            return "none"
        case .thrift:
            return "source.thrift"
        case .turing:
            return "source.turing"
        case .turtle:
            return "source.turtle"
        case .twig:
            return "text.html.twig"
        case .typeLanguage:
            return "source.tl"
        case .typescript:
            return "source.ts"
        case .unifiedParallelC:
            return "source.c"
        case .unity3dAsset:
            return "source.yaml"
        case .unixAssembly:
            return "source.x86"
        case .uno:
            return "source.cs"
        case .unrealscript:
            return "source.java"
        case .urweb:
            return "source.ur"
        case .v:
            return "source.v"
        case .vba:
            return "source.vba"
        case .vbscript:
            return "source.vbnet"
        case .vcl:
            return "source.varnish.vcl"
        case .vhdl:
            return "source.vhdl"
        case .vala:
            return "source.vala"
        case .valveDataFormat:
            return "source.keyvalues"
        case .velocityTemplateLanguage:
            return "source.velocity"
        case .verilog:
            return "source.verilog"
        case .vimHelpFile:
            return "text.vim-help"
        case .vimScript:
            return "source.viml"
        case .vimSnippet:
            return "source.vim-snippet"
        case .visualBasicNet:
            return "source.vbnet"
        case .visualBasic60:
            return "source.vbnet"
        case .volt:
            return "source.d"
        case .vue:
            return "text.html.vue"
        case .vyper:
            return "source.vyper"
        case .wdl:
            return "source.wdl"
        case .wgsl:
            return "source.wgsl"
        case .wavefrontMaterial:
            return "source.wavefront.mtl"
        case .wavefrontObject:
            return "source.wavefront.obj"
        case .webOntologyLanguage:
            return "text.xml"
        case .webassembly:
            return "source.webassembly"
        case .webassemblyInterfaceType:
            return "source.wit"
        case .webidl:
            return "source.webidl"
        case .webvtt:
            return "text.vtt"
        case .wgetConfig:
            return "source.wgetrc"
        case .whiley:
            return "source.whiley"
        case .wikitext:
            return "text.html.mediawiki"
        case .win32MessageFile:
            return "source.win32-messages"
        case .windowsRegistryEntries:
            return "source.reg"
        case .witcherScript:
            return "source.witcherscript"
        case .wollok:
            return "source.wollok"
        case .worldOfWarcraftAddonData:
            return "source.toc"
        case .wren:
            return "source.wren"
        case .xBitmap:
            return "source.c"
        case .xFontDirectoryIndex:
            return "source.fontdir"
        case .xPixmap:
            return "source.c"
        case .x10:
            return "source.x10"
        case .xc:
            return "source.xc"
        case .xcompose:
            return "config.xcompose"
        case .xml:
            return "text.xml"
        case .xmlPropertyList:
            return "text.xml.plist"
        case .xpages:
            return "text.xml"
        case .xproc:
            return "text.xml"
        case .xquery:
            return "source.xq"
        case .xs:
            return "source.c"
        case .xslt:
            return "text.xml.xsl"
        case .xojo:
            return "source.xojo"
        case .xonsh:
            return "source.python"
        case .xtend:
            return "source.xtend"
        case .yaml:
            return "source.yaml"
        case .yang:
            return "source.yang"
        case .yara:
            return "source.yara"
        case .yasnippet:
            return "source.yasnippet"
        case .yacc:
            return "source.yacc"
        case .yul:
            return "source.yul"
        case .zap:
            return "source.zap"
        case .zil:
            return "source.zil"
        case .zeek:
            return "source.zeek"
        case .zenscript:
            return "source.zenscript"
        case .zephir:
            return "source.php.zephir"
        case .zig:
            return "source.zig"
        case .zimpl:
            return "none"
        case .curlConfig:
            return "source.curlrc"
        case .desktop:
            return "source.desktop"
        case .dircolors:
            return "source.dircolors"
        case .ec:
            return "source.c.ec"
        case .edn:
            return "source.clojure"
        case .fish:
            return "source.fish"
        case .hoon:
            return "source.hoon"
        case .jq:
            return "source.jq"
        case .kvlang:
            return "source.python.kivy"
        case .mircScript:
            return "source.msl"
        case .mcfunction:
            return "source.mcfunction"
        case .mupad:
            return "source.mupad"
        case .nanorc:
            return "source.nanorc"
        case .nesc:
            return "source.nesc"
        case .ooc:
            return "source.ooc"
        case .q:
            return "source.q"
        case .restructuredtext:
            return "text.restructuredtext"
        case .robotsTxt:
            return "text.robots-txt"
        case .sed:
            return "source.sed"
        case .wisp:
            return "source.clojure"
        case .xbase:
            return "source.harbour"
        }
    }
    public var aceMode: String {
        switch self {
        case ._1cEnterprise:
            return "text"
        case ._2DimensionalArray:
            return "text"
        case ._4d:
            return "text"
        case .abap:
            return "abap"
        case .abapCds:
            return "text"
        case .abnf:
            return "text"
        case .agsScript:
            return "c_cpp"
        case .aidl:
            return "text"
        case .al:
            return "text"
        case .ampl:
            return "text"
        case .antlr:
            return "text"
        case .apiBlueprint:
            return "markdown"
        case .apl:
            return "text"
        case .asl:
            return "text"
        case .asn1:
            return "text"
        case .aspNet:
            return "text"
        case .ats:
            return "ocaml"
        case .actionscript:
            return "actionscript"
        case .ada:
            return "ada"
        case .adblockFilterList:
            return "text"
        case .adobeFontMetrics:
            return "text"
        case .agda:
            return "text"
        case .alloy:
            return "text"
        case .alpineAbuild:
            return "sh"
        case .altiumDesigner:
            return "ini"
        case .angelscript:
            return "text"
        case .antBuildSystem:
            return "xml"
        case .antlers:
            return "text"
        case .apacheconf:
            return "apache_conf"
        case .apex:
            return "java"
        case .apolloGuidanceComputer:
            return "assembly_x86"
        case .applescript:
            return "applescript"
        case .arc:
            return "text"
        case .asciidoc:
            return "asciidoc"
        case .aspectj:
            return "text"
        case .assembly:
            return "assembly_x86"
        case .astro:
            return "html"
        case .asymptote:
            return "c_cpp"
        case .augeas:
            return "text"
        case .autohotkey:
            return "autohotkey"
        case .autoit:
            return "autohotkey"
        case .avroIdl:
            return "text"
        case .awk:
            return "text"
        case .basic:
            return "text"
        case .ballerina:
            return "text"
        case .batchfile:
            return "batchfile"
        case .beef:
            return "csharp"
        case .befunge:
            return "text"
        case .berry:
            return "text"
        case .bibtex:
            return "tex"
        case .bicep:
            return "text"
        case .bikeshed:
            return "html"
        case .bison:
            return "text"
        case .bitbake:
            return "text"
        case .blade:
            return "text"
        case .blitzbasic:
            return "text"
        case .blitzmax:
            return "text"
        case .bluespec:
            return "verilog"
        case .boo:
            return "text"
        case .boogie:
            return "text"
        case .brainfuck:
            return "text"
        case .brighterscript:
            return "text"
        case .brightscript:
            return "text"
        case .browserslist:
            return "text"
        case .c:
            return "c_cpp"
        case .csharp:
            return "csharp"
        case .cpp:
            return "c_cpp"
        case .cObjdump:
            return "assembly_x86"
        case .c2hsHaskell:
            return "haskell"
        case .capCds:
            return "text"
        case .cil:
            return "text"
        case .clips:
            return "text"
        case .cmake:
            return "text"
        case .cobol:
            return "cobol"
        case .codeowners:
            return "gitignore"
        case .collada:
            return "xml"
        case .cson:
            return "coffee"
        case .css:
            return "css"
        case .csv:
            return "text"
        case .cue:
            return "text"
        case .cweb:
            return "text"
        case .cabalConfig:
            return "haskell"
        case .cadence:
            return "text"
        case .cairo:
            return "text"
        case .cameligo:
            return "ocaml"
        case .capNProto:
            return "text"
        case .cartocss:
            return "text"
        case .ceylon:
            return "text"
        case .chapel:
            return "text"
        case .charity:
            return "text"
        case .checksums:
            return "text"
        case .chuck:
            return "java"
        case .circom:
            return "text"
        case .cirru:
            return "cirru"
        case .clarion:
            return "text"
        case .clarity:
            return "lisp"
        case .classicAsp:
            return "text"
        case .clean:
            return "text"
        case .click:
            return "text"
        case .clojure:
            return "clojure"
        case .closureTemplates:
            return "soy_template"
        case .cloudFirestoreSecurityRules:
            return "less"
        case .conllU:
            return "text"
        case .codeql:
            return "text"
        case .coffeescript:
            return "coffee"
        case .coldfusion:
            return "coldfusion"
        case .coldfusionCfc:
            return "coldfusion"
        case .commonLisp:
            return "lisp"
        case .commonWorkflowLanguage:
            return "yaml"
        case .componentPascal:
            return "pascal"
        case .cool:
            return "text"
        case .coq:
            return "text"
        case .cppObjdump:
            return "assembly_x86"
        case .creole:
            return "text"
        case .crystal:
            return "ruby"
        case .csound:
            return "csound_orchestra"
        case .csoundDocument:
            return "csound_document"
        case .csoundScore:
            return "csound_score"
        case .cuda:
            return "c_cpp"
        case .cueSheet:
            return "text"
        case .curry:
            return "haskell"
        case .cycript:
            return "javascript"
        case .cypher:
            return "text"
        case .cython:
            return "text"
        case .d:
            return "d"
        case .dObjdump:
            return "assembly_x86"
        case .d2:
            return "text"
        case .digitalCommandLanguage:
            return "text"
        case .dm:
            return "c_cpp"
        case .dnsZone:
            return "text"
        case .dtrace:
            return "c_cpp"
        case .dafny:
            return "text"
        case .darcsPatch:
            return "text"
        case .dart:
            return "dart"
        case .dataweave:
            return "text"
        case .debianPackageControlFile:
            return "text"
        case .denizenscript:
            return "yaml"
        case .dhall:
            return "haskell"
        case .diff:
            return "diff"
        case .directx3dFile:
            return "text"
        case .dockerfile:
            return "dockerfile"
        case .dogescript:
            return "text"
        case .dotenv:
            return "text"
        case .dylan:
            return "text"
        case .e:
            return "text"
        case .eMail:
            return "text"
        case .ebnf:
            return "text"
        case .ecl:
            return "text"
        case .eclipse:
            return "prolog"
        case .ejs:
            return "ejs"
        case .eq:
            return "csharp"
        case .eagle:
            return "xml"
        case .earthly:
            return "text"
        case .easybuild:
            return "python"
        case .ecereProjects:
            return "json"
        case .ecmarkup:
            return "html"
        case .editorconfig:
            return "ini"
        case .edjeDataCollection:
            return "c_cpp"
        case .eiffel:
            return "eiffel"
        case .elixir:
            return "elixir"
        case .elm:
            return "elm"
        case .elvish:
            return "text"
        case .elvishTranscript:
            return "text"
        case .emacsLisp:
            return "lisp"
        case .emberscript:
            return "coffee"
        case .erlang:
            return "erlang"
        case .euphoria:
            return "text"
        case .fsharp:
            return "text"
        case .f2:
            return "text"
        case .figletFont:
            return "text"
        case .flux:
            return "text"
        case .factor:
            return "text"
        case .fancy:
            return "text"
        case .fantom:
            return "text"
        case .faust:
            return "text"
        case .fennel:
            return "text"
        case .filebenchWml:
            return "text"
        case .filterscript:
            return "text"
        case .fluent:
            return "text"
        case .formatted:
            return "text"
        case .forth:
            return "forth"
        case .fortran:
            return "text"
        case .fortranFreeForm:
            return "text"
        case .freebasic:
            return "text"
        case .freemarker:
            return "ftl"
        case .frege:
            return "haskell"
        case .futhark:
            return "text"
        case .gCode:
            return "gcode"
        case .gaml:
            return "text"
        case .gams:
            return "text"
        case .gap:
            return "text"
        case .gccMachineDescription:
            return "lisp"
        case .gdb:
            return "text"
        case .gdscript:
            return "text"
        case .gedcom:
            return "text"
        case .glsl:
            return "glsl"
        case .gn:
            return "python"
        case .gsc:
            return "c_cpp"
        case .gameMakerLanguage:
            return "c_cpp"
        case .gemfileLock:
            return "text"
        case .gemini:
            return "text"
        case .genero:
            return "text"
        case .generoForms:
            return "text"
        case .genie:
            return "text"
        case .genshi:
            return "xml"
        case .gentooEbuild:
            return "sh"
        case .gentooEclass:
            return "sh"
        case .gerberImage:
            return "text"
        case .gettextCatalog:
            return "text"
        case .gherkin:
            return "text"
        case .gitAttributes:
            return "gitignore"
        case .gitConfig:
            return "ini"
        case .gitRevisionList:
            return "text"
        case .gleam:
            return "text"
        case .glyph:
            return "tcl"
        case .glyphBitmapDistributionFormat:
            return "text"
        case .gnuplot:
            return "text"
        case .go:
            return "golang"
        case .goChecksums:
            return "text"
        case .goModule:
            return "text"
        case .goWorkspace:
            return "text"
        case .godotResource:
            return "text"
        case .golo:
            return "text"
        case .gosu:
            return "text"
        case .grace:
            return "text"
        case .gradle:
            return "text"
        case .grammaticalFramework:
            return "haskell"
        case .graphModelingLanguage:
            return "text"
        case .graphql:
            return "text"
        case .graphvizDot:
            return "text"
        case .groovy:
            return "groovy"
        case .groovyServerPages:
            return "jsp"
        case .haproxy:
            return "text"
        case .hcl:
            return "ruby"
        case .hlsl:
            return "text"
        case .hocon:
            return "text"
        case .html:
            return "html"
        case .htmlEcr:
            return "text"
        case .htmlEex:
            return "text"
        case .htmlErb:
            return "text"
        case .htmlPhp:
            return "php"
        case .htmlRazor:
            return "razor"
        case .http:
            return "text"
        case .hxml:
            return "text"
        case .hack:
            return "php"
        case .haml:
            return "haml"
        case .handlebars:
            return "handlebars"
        case .harbour:
            return "text"
        case .haskell:
            return "haskell"
        case .haxe:
            return "haxe"
        case .hiveql:
            return "sql"
        case .holyc:
            return "c_cpp"
        case .hostsFile:
            return "text"
        case .hy:
            return "text"
        case .hyphy:
            return "text"
        case .idl:
            return "text"
        case .igorPro:
            return "text"
        case .ini:
            return "ini"
        case .ircLog:
            return "text"
        case .idris:
            return "text"
        case .ignoreList:
            return "gitignore"
        case .imagejMacro:
            return "text"
        case .imba:
            return "text"
        case .inform7:
            return "text"
        case .ink:
            return "text"
        case .innoSetup:
            return "text"
        case .io:
            return "io"
        case .ioke:
            return "text"
        case .isabelle:
            return "text"
        case .isabelleRoot:
            return "text"
        case .j:
            return "text"
        case .jarManifest:
            return "text"
        case .jcl:
            return "text"
        case .jflex:
            return "text"
        case .json:
            return "json"
        case .jsonWithComments:
            return "javascript"
        case .json5:
            return "javascript"
        case .jsonld:
            return "javascript"
        case .jsoniq:
            return "jsoniq"
        case .janet:
            return "scheme"
        case .jasmin:
            return "java"
        case .java:
            return "java"
        case .javaProperties:
            return "properties"
        case .javaServerPages:
            return "jsp"
        case .javascript:
            return "javascript"
        case .javascriptErb:
            return "javascript"
        case .jestSnapshot:
            return "javascript"
        case .jetbrainsMps:
            return "xml"
        case .jinja:
            return "django"
        case .jison:
            return "text"
        case .jisonLex:
            return "text"
        case .jolie:
            return "text"
        case .jsonnet:
            return "text"
        case .julia:
            return "julia"
        case .jupyterNotebook:
            return "json"
        case .just:
            return "text"
        case .krl:
            return "text"
        case .kaitaiStruct:
            return "yaml"
        case .kakounescript:
            return "text"
        case .kerboscript:
            return "text"
        case .kicadLayout:
            return "lisp"
        case .kicadLegacyLayout:
            return "text"
        case .kicadSchematic:
            return "text"
        case .kickstart:
            return "text"
        case .kit:
            return "html"
        case .kotlin:
            return "text"
        case .kusto:
            return "text"
        case .lfe:
            return "lisp"
        case .llvm:
            return "text"
        case .lolcode:
            return "text"
        case .lsl:
            return "lsl"
        case .ltspiceSymbol:
            return "text"
        case .labview:
            return "xml"
        case .lark:
            return "text"
        case .lasso:
            return "text"
        case .latte:
            return "smarty"
        case .lean:
            return "text"
        case .less:
            return "less"
        case .lex:
            return "text"
        case .ligolang:
            return "pascal"
        case .lilypond:
            return "text"
        case .limbo:
            return "text"
        case .linkerScript:
            return "text"
        case .linuxKernelModule:
            return "text"
        case .liquid:
            return "liquid"
        case .literateAgda:
            return "text"
        case .literateCoffeescript:
            return "text"
        case .literateHaskell:
            return "text"
        case .livescript:
            return "livescript"
        case .logos:
            return "text"
        case .logtalk:
            return "text"
        case .lookml:
            return "yaml"
        case .loomscript:
            return "text"
        case .lua:
            return "lua"
        case .m:
            return "text"
        case .m4:
            return "text"
        case .m4sugar:
            return "text"
        case .matlab:
            return "matlab"
        case .maxscript:
            return "text"
        case .mdx:
            return "markdown"
        case .mlir:
            return "text"
        case .mql4:
            return "c_cpp"
        case .mql5:
            return "c_cpp"
        case .mtml:
            return "html"
        case .muf:
            return "forth"
        case .macaulay2:
            return "text"
        case .makefile:
            return "makefile"
        case .mako:
            return "text"
        case .markdown:
            return "markdown"
        case .marko:
            return "text"
        case .mask:
            return "mask"
        case .mathematica:
            return "text"
        case .mavenPom:
            return "xml"
        case .max:
            return "json"
        case .mercury:
            return "prolog"
        case .mermaid:
            return "text"
        case .meson:
            return "text"
        case .metal:
            return "c_cpp"
        case .microsoftDeveloperStudioProject:
            return "text"
        case .microsoftVisualStudioSolution:
            return "text"
        case .minid:
            return "text"
        case .miniyaml:
            return "yaml"
        case .mint:
            return "text"
        case .mirah:
            return "ruby"
        case .modelica:
            return "text"
        case .modula2:
            return "text"
        case .modula3:
            return "text"
        case .moduleManagementSystem:
            return "text"
        case .monkey:
            return "text"
        case .monkeyC:
            return "c_cpp"
        case .moocode:
            return "text"
        case .moonscript:
            return "text"
        case .motoko:
            return "text"
        case .motorola68kAssembly:
            return "assembly_x86"
        case .move:
            return "text"
        case .muse:
            return "text"
        case .mustache:
            return "smarty"
        case .myghty:
            return "text"
        case .nasl:
            return "text"
        case .ncl:
            return "text"
        case .neon:
            return "text"
        case .nl:
            return "text"
        case .npmConfig:
            return "text"
        case .nsis:
            return "text"
        case .nwscript:
            return "c_cpp"
        case .nasal:
            return "text"
        case .nearley:
            return "text"
        case .nemerle:
            return "text"
        case .netlinx:
            return "text"
        case .netlinxErb:
            return "text"
        case .netlogo:
            return "lisp"
        case .newlisp:
            return "lisp"
        case .nextflow:
            return "groovy"
        case .nginx:
            return "text"
        case .nim:
            return "text"
        case .ninja:
            return "text"
        case .nit:
            return "text"
        case .nix:
            return "nix"
        case .nu:
            return "scheme"
        case .numpy:
            return "text"
        case .nunjucks:
            return "nunjucks"
        case .nushell:
            return "sh"
        case .oasv2Json:
            return "json"
        case .oasv2Yaml:
            return "yaml"
        case .oasv3Json:
            return "json"
        case .oasv3Yaml:
            return "yaml"
        case .ocaml:
            return "ocaml"
        case .objdump:
            return "assembly_x86"
        case .objectDataInstanceNotation:
            return "text"
        case .objectscript:
            return "text"
        case .objectiveC:
            return "objectivec"
        case .objectiveCpp:
            return "objectivec"
        case .objectiveJ:
            return "text"
        case .odin:
            return "text"
        case .omgrofl:
            return "text"
        case .opa:
            return "text"
        case .opal:
            return "text"
        case .openPolicyAgent:
            return "text"
        case .openapiSpecificationV2:
            return "text"
        case .openapiSpecificationV3:
            return "text"
        case .opencl:
            return "c_cpp"
        case .openedgeAbl:
            return "text"
        case .openqasm:
            return "text"
        case .openrcRunscript:
            return "sh"
        case .openscad:
            return "scad"
        case .openstepPropertyList:
            return "text"
        case .opentypeFeatureFile:
            return "text"
        case .optionList:
            return "sh"
        case .org:
            return "text"
        case .ox:
            return "text"
        case .oxygene:
            return "text"
        case .oz:
            return "text"
        case .p4:
            return "text"
        case .pddl:
            return "text"
        case .pegJs:
            return "javascript"
        case .php:
            return "php"
        case .plsql:
            return "sql"
        case .plpgsql:
            return "pgsql"
        case .povRaySdl:
            return "text"
        case .pact:
            return "text"
        case .pan:
            return "text"
        case .papyrus:
            return "text"
        case .parrot:
            return "text"
        case .parrotAssembly:
            return "text"
        case .parrotInternalRepresentation:
            return "text"
        case .pascal:
            return "pascal"
        case .pawn:
            return "text"
        case .pep8:
            return "text"
        case .perl:
            return "perl"
        case .pic:
            return "text"
        case .pickle:
            return "text"
        case .picolisp:
            return "lisp"
        case .piglatin:
            return "text"
        case .pike:
            return "text"
        case .plantuml:
            return "text"
        case .pod:
            return "perl"
        case .pod6:
            return "perl"
        case .pogoscript:
            return "text"
        case .polar:
            return "text"
        case .pony:
            return "text"
        case .portugol:
            return "text"
        case .postcss:
            return "text"
        case .postscript:
            return "text"
        case .powerbuilder:
            return "text"
        case .powershell:
            return "powershell"
        case .prisma:
            return "text"
        case .processing:
            return "text"
        case .procfile:
            return "batchfile"
        case .proguard:
            return "text"
        case .prolog:
            return "prolog"
        case .promela:
            return "text"
        case .propellerSpin:
            return "text"
        case .protocolBuffer:
            return "protobuf"
        case .protocolBufferTextFormat:
            return "text"
        case .publicKey:
            return "text"
        case .pug:
            return "jade"
        case .puppet:
            return "text"
        case .pureData:
            return "text"
        case .purebasic:
            return "text"
        case .purescript:
            return "haskell"
        case .pyret:
            return "python"
        case .python:
            return "python"
        case .pythonConsole:
            return "text"
        case .pythonTraceback:
            return "text"
        case .q:
            return "text"
        case .qml:
            return "text"
        case .qmake:
            return "text"
        case .qtScript:
            return "javascript"
        case .quake:
            return "text"
        case .r:
            return "r"
        case .raml:
            return "yaml"
        case .rbs:
            return "ruby"
        case .rdoc:
            return "rdoc"
        case .realbasic:
            return "text"
        case .rexx:
            return "text"
        case .rmarkdown:
            return "markdown"
        case .rpc:
            return "c_cpp"
        case .rpgle:
            return "text"
        case .rpmSpec:
            return "text"
        case .runoff:
            return "text"
        case .racket:
            return "lisp"
        case .ragel:
            return "text"
        case .raku:
            return "perl"
        case .rascal:
            return "text"
        case .rawTokenData:
            return "text"
        case .rescript:
            return "rust"
        case .readlineConfig:
            return "text"
        case .reason:
            return "rust"
        case .reasonligo:
            return "rust"
        case .rebol:
            return "text"
        case .recordJar:
            return "text"
        case .red:
            return "text"
        case .redcode:
            return "text"
        case .redirectRules:
            return "text"
        case .regularExpression:
            return "text"
        case .renPy:
            return "python"
        case .renderscript:
            return "text"
        case .richTextFormat:
            return "text"
        case .ring:
            return "text"
        case .riot:
            return "html"
        case .robotframework:
            return "text"
        case .roff:
            return "text"
        case .roffManpage:
            return "text"
        case .rouge:
            return "clojure"
        case .routerosScript:
            return "text"
        case .ruby:
            return "ruby"
        case .rust:
            return "rust"
        case .sas:
            return "text"
        case .scss:
            return "scss"
        case .selinuxPolicy:
            return "text"
        case .smt:
            return "text"
        case .sparql:
            return "text"
        case .sqf:
            return "text"
        case .sql:
            return "sql"
        case .sqlpl:
            return "sql"
        case .srecodeTemplate:
            return "lisp"
        case .sshConfig:
            return "text"
        case .star:
            return "text"
        case .stl:
            return "text"
        case .ston:
            return "text"
        case .svg:
            return "xml"
        case .swig:
            return "c_cpp"
        case .sage:
            return "python"
        case .saltstack:
            return "yaml"
        case .sass:
            return "sass"
        case .scala:
            return "scala"
        case .scaml:
            return "text"
        case .scenic:
            return "text"
        case .scheme:
            return "scheme"
        case .scilab:
            return "text"
        case .self:
            return "text"
        case .shaderlab:
            return "text"
        case .shell:
            return "sh"
        case .shellcheckConfig:
            return "ini"
        case .shellsession:
            return "sh"
        case .shen:
            return "text"
        case .sieve:
            return "text"
        case .simpleFileVerification:
            return "ini"
        case .singularity:
            return "text"
        case .slash:
            return "text"
        case .slice:
            return "text"
        case .slim:
            return "text"
        case .smpl:
            return "text"
        case .smali:
            return "text"
        case .smalltalk:
            return "text"
        case .smarty:
            return "smarty"
        case .smithy:
            return "text"
        case .snakemake:
            return "python"
        case .solidity:
            return "text"
        case .soong:
            return "text"
        case .sourcepawn:
            return "text"
        case .splineFontDatabase:
            return "yaml"
        case .squirrel:
            return "c_cpp"
        case .stan:
            return "text"
        case .standardMl:
            return "text"
        case .starlark:
            return "python"
        case .stata:
            return "text"
        case .stringtemplate:
            return "html"
        case .stylus:
            return "stylus"
        case .subripText:
            return "text"
        case .sugarss:
            return "text"
        case .supercollider:
            return "text"
        case .svelte:
            return "html"
        case .sway:
            return "rust"
        case .swift:
            return "text"
        case .systemverilog:
            return "verilog"
        case .tiProgram:
            return "text"
        case .tlVerilog:
            return "verilog"
        case .tla:
            return "text"
        case .toml:
            return "toml"
        case .tsql:
            return "sql"
        case .tsv:
            return "text"
        case .tsx:
            return "javascript"
        case .txl:
            return "text"
        case .talon:
            return "text"
        case .tcl:
            return "tcl"
        case .tcsh:
            return "sh"
        case .tex:
            return "tex"
        case .tea:
            return "text"
        case .terra:
            return "lua"
        case .texinfo:
            return "text"
        case .text:
            return "text"
        case .textmateProperties:
            return "properties"
        case .textile:
            return "textile"
        case .thrift:
            return "text"
        case .turing:
            return "text"
        case .turtle:
            return "text"
        case .twig:
            return "twig"
        case .typeLanguage:
            return "text"
        case .typescript:
            return "typescript"
        case .unifiedParallelC:
            return "c_cpp"
        case .unity3dAsset:
            return "yaml"
        case .unixAssembly:
            return "assembly_x86"
        case .uno:
            return "csharp"
        case .unrealscript:
            return "java"
        case .urweb:
            return "text"
        case .v:
            return "golang"
        case .vba:
            return "text"
        case .vbscript:
            return "text"
        case .vcl:
            return "text"
        case .vhdl:
            return "vhdl"
        case .vala:
            return "vala"
        case .valveDataFormat:
            return "text"
        case .velocityTemplateLanguage:
            return "velocity"
        case .verilog:
            return "verilog"
        case .vimHelpFile:
            return "text"
        case .vimScript:
            return "text"
        case .vimSnippet:
            return "text"
        case .visualBasicNet:
            return "text"
        case .visualBasic60:
            return "text"
        case .volt:
            return "d"
        case .vue:
            return "html"
        case .vyper:
            return "text"
        case .wdl:
            return "text"
        case .wgsl:
            return "text"
        case .wavefrontMaterial:
            return "text"
        case .wavefrontObject:
            return "text"
        case .webOntologyLanguage:
            return "xml"
        case .webassembly:
            return "lisp"
        case .webassemblyInterfaceType:
            return "text"
        case .webidl:
            return "text"
        case .webvtt:
            return "text"
        case .wgetConfig:
            return "text"
        case .whiley:
            return "text"
        case .wikitext:
            return "text"
        case .win32MessageFile:
            return "ini"
        case .windowsRegistryEntries:
            return "ini"
        case .witcherScript:
            return "text"
        case .wollok:
            return "text"
        case .worldOfWarcraftAddonData:
            return "text"
        case .wren:
            return "text"
        case .xBitmap:
            return "c_cpp"
        case .xFontDirectoryIndex:
            return "text"
        case .xPixmap:
            return "c_cpp"
        case .x10:
            return "text"
        case .xc:
            return "c_cpp"
        case .xcompose:
            return "text"
        case .xml:
            return "xml"
        case .xmlPropertyList:
            return "xml"
        case .xpages:
            return "xml"
        case .xproc:
            return "xml"
        case .xquery:
            return "xquery"
        case .xs:
            return "c_cpp"
        case .xslt:
            return "xml"
        case .xojo:
            return "text"
        case .xonsh:
            return "text"
        case .xtend:
            return "text"
        case .yaml:
            return "yaml"
        case .yang:
            return "text"
        case .yara:
            return "text"
        case .yasnippet:
            return "text"
        case .yacc:
            return "text"
        case .yul:
            return "text"
        case .zap:
            return "text"
        case .zil:
            return "text"
        case .zeek:
            return "text"
        case .zenscript:
            return "text"
        case .zephir:
            return "php"
        case .zig:
            return "text"
        case .zimpl:
            return "text"
        case .curlConfig:
            return "text"
        case .desktop:
            return "text"
        case .dircolors:
            return "text"
        case .ec:
            return "text"
        case .edn:
            return "clojure"
        case .fish:
            return "text"
        case .hoon:
            return "text"
        case .jq:
            return "text"
        case .kvlang:
            return "text"
        case .mircScript:
            return "text"
        case .mcfunction:
            return "text"
        case .mupad:
            return "text"
        case .nanorc:
            return "text"
        case .nesc:
            return "text"
        case .ooc:
            return "text"
        case .qsharp:
            return "text"
        case .restructuredtext:
            return "text"
        case .robotsTxt:
            return "text"
        case .sed:
            return "text"
        case .wisp:
            return "clojure"
        case .xbase:
            return "text"
        }
    }
    public var languageId: Int {
        switch self {
        case ._1cEnterprise:
            return 0
        case ._2DimensionalArray:
            return 387204628
        case ._4d:
            return 577529595
        case .abap:
            return 1
        case .abapCds:
            return 452681853
        case .abnf:
            return 429
        case .agsScript:
            return 2
        case .aidl:
            return 451700185
        case .al:
            return 658971832
        case .ampl:
            return 3
        case .antlr:
            return 4
        case .apiBlueprint:
            return 5
        case .apl:
            return 6
        case .asl:
            return 124996147
        case .asn1:
            return 7
        case .aspNet:
            return 564186416
        case .ats:
            return 9
        case .actionscript:
            return 10
        case .ada:
            return 11
        case .adblockFilterList:
            return 884614762
        case .adobeFontMetrics:
            return 147198098
        case .agda:
            return 12
        case .alloy:
            return 13
        case .alpineAbuild:
            return 14
        case .altiumDesigner:
            return 187772328
        case .angelscript:
            return 389477596
        case .antBuildSystem:
            return 15
        case .antlers:
            return 1067292663
        case .apacheconf:
            return 16
        case .apex:
            return 17
        case .apolloGuidanceComputer:
            return 18
        case .applescript:
            return 19
        case .arc:
            return 20
        case .asciidoc:
            return 22
        case .aspectj:
            return 23
        case .assembly:
            return 24
        case .astro:
            return 578209015
        case .asymptote:
            return 591605007
        case .augeas:
            return 25
        case .autohotkey:
            return 26
        case .autoit:
            return 27
        case .avroIdl:
            return 785497837
        case .awk:
            return 28
        case .basic:
            return 28923963
        case .ballerina:
            return 720859680
        case .batchfile:
            return 29
        case .beef:
            return 545626333
        case .befunge:
            return 30
        case .berry:
            return 121855308
        case .bibtex:
            return 982188347
        case .bicep:
            return 321200902
        case .bikeshed:
            return 1055528081
        case .bison:
            return 31
        case .bitbake:
            return 32
        case .blade:
            return 33
        case .blitzbasic:
            return 34
        case .blitzmax:
            return 35
        case .bluespec:
            return 36
        case .boo:
            return 37
        case .boogie:
            return 955017407
        case .brainfuck:
            return 38
        case .brighterscript:
            return 943571030
        case .brightscript:
            return 39
        case .browserslist:
            return 153503348
        case .c:
            return 41
        case .csharp:
            return 42
        case .cpp:
            return 43
        case .cObjdump:
            return 44
        case .c2hsHaskell:
            return 45
        case .capCds:
            return 390788699
        case .cil:
            return 29176339
        case .clips:
            return 46
        case .cmake:
            return 47
        case .cobol:
            return 48
        case .codeowners:
            return 321684729
        case .collada:
            return 49
        case .cson:
            return 424
        case .css:
            return 50
        case .csv:
            return 51
        case .cue:
            return 356063509
        case .cweb:
            return 657332628
        case .cabalConfig:
            return 677095381
        case .cadence:
            return 270184138
        case .cairo:
            return 620599567
        case .cameligo:
            return 829207807
        case .capNProto:
            return 52
        case .cartocss:
            return 53
        case .ceylon:
            return 54
        case .chapel:
            return 55
        case .charity:
            return 56
        case .checksums:
            return 372063053
        case .chuck:
            return 57
        case .circom:
            return 1042332086
        case .cirru:
            return 58
        case .clarion:
            return 59
        case .clarity:
            return 91493841
        case .classicAsp:
            return 8
        case .clean:
            return 60
        case .click:
            return 61
        case .clojure:
            return 62
        case .closureTemplates:
            return 357046146
        case .cloudFirestoreSecurityRules:
            return 407996372
        case .conllU:
            return 421026389
        case .codeql:
            return 424259634
        case .coffeescript:
            return 63
        case .coldfusion:
            return 64
        case .coldfusionCfc:
            return 65
        case .commonLisp:
            return 66
        case .commonWorkflowLanguage:
            return 988547172
        case .componentPascal:
            return 67
        case .cool:
            return 68
        case .coq:
            return 69
        case .cppObjdump:
            return 70
        case .creole:
            return 71
        case .crystal:
            return 72
        case .csound:
            return 73
        case .csoundDocument:
            return 74
        case .csoundScore:
            return 75
        case .cuda:
            return 77
        case .cueSheet:
            return 942714150
        case .curry:
            return 439829048
        case .cycript:
            return 78
        case .cypher:
            return 850806976
        case .cython:
            return 79
        case .d:
            return 80
        case .dObjdump:
            return 81
        case .d2:
            return 37531557
        case .digitalCommandLanguage:
            return 82
        case .dm:
            return 83
        case .dnsZone:
            return 84
        case .dtrace:
            return 85
        case .dafny:
            return 969323346
        case .darcsPatch:
            return 86
        case .dart:
            return 87
        case .dataweave:
            return 974514097
        case .debianPackageControlFile:
            return 527438264
        case .denizenscript:
            return 435000929
        case .dhall:
            return 793969321
        case .diff:
            return 88
        case .directx3dFile:
            return 201049282
        case .dockerfile:
            return 89
        case .dogescript:
            return 90
        case .dotenv:
            return 111148035
        case .dylan:
            return 91
        case .e:
            return 92
        case .eMail:
            return 529653389
        case .ebnf:
            return 430
        case .ecl:
            return 93
        case .eclipse:
            return 94
        case .ejs:
            return 95
        case .eq:
            return 96
        case .eagle:
            return 97
        case .earthly:
            return 963512632
        case .easybuild:
            return 342840477
        case .ecereProjects:
            return 98
        case .ecmarkup:
            return 844766630
        case .editorconfig:
            return 96139566
        case .edjeDataCollection:
            return 342840478
        case .eiffel:
            return 99
        case .elixir:
            return 100
        case .elm:
            return 101
        case .elvish:
            return 570996448
        case .elvishTranscript:
            return 452025714
        case .emacsLisp:
            return 102
        case .emberscript:
            return 103
        case .erlang:
            return 104
        case .euphoria:
            return 880693982
        case .fsharp:
            return 105
        case .f2:
            return 336943375
        case .figletFont:
            return 686129783
        case .flux:
            return 106
        case .factor:
            return 108
        case .fancy:
            return 109
        case .fantom:
            return 110
        case .faust:
            return 622529198
        case .fennel:
            return 239946126
        case .filebenchWml:
            return 111
        case .filterscript:
            return 112
        case .fluent:
            return 206353404
        case .formatted:
            return 113
        case .forth:
            return 114
        case .fortran:
            return 107
        case .fortranFreeForm:
            return 761352333
        case .freebasic:
            return 472896659
        case .freemarker:
            return 115
        case .frege:
            return 116
        case .futhark:
            return 97358117
        case .gCode:
            return 117
        case .gaml:
            return 290345951
        case .gams:
            return 118
        case .gap:
            return 119
        case .gccMachineDescription:
            return 121
        case .gdb:
            return 122
        case .gdscript:
            return 123
        case .gedcom:
            return 459577965
        case .glsl:
            return 124
        case .gn:
            return 302957008
        case .gsc:
            return 257856279
        case .gameMakerLanguage:
            return 125
        case .gemfileLock:
            return 907065713
        case .gemini:
            return 310828396
        case .genero:
            return 986054050
        case .generoForms:
            return 902995658
        case .genie:
            return 792408528
        case .genshi:
            return 126
        case .gentooEbuild:
            return 127
        case .gentooEclass:
            return 128
        case .gerberImage:
            return 404627610
        case .gettextCatalog:
            return 129
        case .gherkin:
            return 76
        case .gitAttributes:
            return 956324166
        case .gitConfig:
            return 807968997
        case .gitRevisionList:
            return 461881235
        case .gleam:
            return 1054258749
        case .glyph:
            return 130
        case .glyphBitmapDistributionFormat:
            return 997665271
        case .gnuplot:
            return 131
        case .go:
            return 132
        case .goChecksums:
            return 1054391671
        case .goModule:
            return 947461016
        case .goWorkspace:
            return 934546256
        case .godotResource:
            return 738107771
        case .golo:
            return 133
        case .gosu:
            return 134
        case .grace:
            return 135
        case .gradle:
            return 136
        case .grammaticalFramework:
            return 137
        case .graphModelingLanguage:
            return 138
        case .graphql:
            return 139
        case .graphvizDot:
            return 140
        case .groovy:
            return 142
        case .groovyServerPages:
            return 143
        case .haproxy:
            return 366607477
        case .hcl:
            return 144
        case .hlsl:
            return 145
        case .hocon:
            return 679725279
        case .html:
            return 146
        case .htmlEcr:
            return 148
        case .htmlEex:
            return 149
        case .htmlErb:
            return 150
        case .htmlPhp:
            return 151
        case .htmlRazor:
            return 479039817
        case .http:
            return 152
        case .hxml:
            return 786683730
        case .hack:
            return 153
        case .haml:
            return 154
        case .handlebars:
            return 155
        case .harbour:
            return 156
        case .haskell:
            return 157
        case .haxe:
            return 158
        case .hiveql:
            return 931814087
        case .holyc:
            return 928121743
        case .hostsFile:
            return 231021894
        case .hy:
            return 159
        case .hyphy:
            return 160
        case .idl:
            return 161
        case .igorPro:
            return 162
        case .ini:
            return 163
        case .ircLog:
            return 164
        case .idris:
            return 165
        case .ignoreList:
            return 74444240
        case .imagejMacro:
            return 575143428
        case .imba:
            return 1057618448
        case .inform7:
            return 166
        case .ink:
            return 838252715
        case .innoSetup:
            return 167
        case .io:
            return 168
        case .ioke:
            return 169
        case .isabelle:
            return 170
        case .isabelleRoot:
            return 171
        case .j:
            return 172
        case .jarManifest:
            return 447261135
        case .jcl:
            return 316620079
        case .jflex:
            return 173
        case .json:
            return 174
        case .jsonWithComments:
            return 423
        case .json5:
            return 175
        case .jsonld:
            return 176
        case .jsoniq:
            return 177
        case .janet:
            return 1028705371
        case .jasmin:
            return 180
        case .java:
            return 181
        case .javaProperties:
            return 519377561
        case .javaServerPages:
            return 182
        case .javascript:
            return 183
        case .javascriptErb:
            return 914318960
        case .jestSnapshot:
            return 774635084
        case .jetbrainsMps:
            return 465165328
        case .jinja:
            return 147
        case .jison:
            return 284531423
        case .jisonLex:
            return 406395330
        case .jolie:
            return 998078858
        case .jsonnet:
            return 664885656
        case .julia:
            return 184
        case .jupyterNotebook:
            return 185
        case .just:
            return 128447695
        case .krl:
            return 186
        case .kaitaiStruct:
            return 818804755
        case .kakounescript:
            return 603336474
        case .kerboscript:
            return 59716426
        case .kicadLayout:
            return 187
        case .kicadLegacyLayout:
            return 140848857
        case .kicadSchematic:
            return 622447435
        case .kickstart:
            return 692635484
        case .kit:
            return 188
        case .kotlin:
            return 189
        case .kusto:
            return 225697190
        case .lfe:
            return 190
        case .llvm:
            return 191
        case .lolcode:
            return 192
        case .lsl:
            return 193
        case .ltspiceSymbol:
            return 1013566805
        case .labview:
            return 194
        case .lark:
            return 758480799
        case .lasso:
            return 195
        case .latte:
            return 196
        case .lean:
            return 197
        case .less:
            return 198
        case .lex:
            return 199
        case .ligolang:
            return 1040646257
        case .lilypond:
            return 200
        case .limbo:
            return 201
        case .linkerScript:
            return 202
        case .linuxKernelModule:
            return 203
        case .liquid:
            return 204
        case .literateAgda:
            return 205
        case .literateCoffeescript:
            return 206
        case .literateHaskell:
            return 207
        case .livescript:
            return 208
        case .logos:
            return 209
        case .logtalk:
            return 210
        case .lookml:
            return 211
        case .loomscript:
            return 212
        case .lua:
            return 213
        case .m:
            return 214
        case .m4:
            return 215
        case .m4sugar:
            return 216
        case .matlab:
            return 225
        case .maxscript:
            return 217
        case .mdx:
            return 512838272
        case .mlir:
            return 448253929
        case .mql4:
            return 426
        case .mql5:
            return 427
        case .mtml:
            return 218
        case .muf:
            return 219
        case .macaulay2:
            return 34167825
        case .makefile:
            return 220
        case .mako:
            return 221
        case .markdown:
            return 222
        case .marko:
            return 932782397
        case .mask:
            return 223
        case .mathematica:
            return 224
        case .mavenPom:
            return 226
        case .max:
            return 227
        case .mercury:
            return 229
        case .mermaid:
            return 385992043
        case .meson:
            return 799141244
        case .metal:
            return 230
        case .microsoftDeveloperStudioProject:
            return 800983837
        case .microsoftVisualStudioSolution:
            return 849523096
        case .minid:
            return 231
        case .miniyaml:
            return 4896465
        case .mint:
            return 968740319
        case .mirah:
            return 232
        case .modelica:
            return 233
        case .modula2:
            return 234
        case .modula3:
            return 564743864
        case .moduleManagementSystem:
            return 235
        case .monkey:
            return 236
        case .monkeyC:
            return 231751931
        case .moocode:
            return 237
        case .moonscript:
            return 238
        case .motoko:
            return 202937027
        case .motorola68kAssembly:
            return 477582706
        case .move:
            return 638334599
        case .muse:
            return 474864066
        case .mustache:
            return 638334590
        case .myghty:
            return 239
        case .nasl:
            return 171666519
        case .ncl:
            return 240
        case .neon:
            return 481192983
        case .nl:
            return 241
        case .npmConfig:
            return 685022663
        case .nsis:
            return 242
        case .nwscript:
            return 731233819
        case .nasal:
            return 178322513
        case .nearley:
            return 521429430
        case .nemerle:
            return 243
        case .netlinx:
            return 244
        case .netlinxErb:
            return 245
        case .netlogo:
            return 246
        case .newlisp:
            return 247
        case .nextflow:
            return 506780613
        case .nginx:
            return 248
        case .nim:
            return 249
        case .ninja:
            return 250
        case .nit:
            return 251
        case .nix:
            return 252
        case .nu:
            return 253
        case .numpy:
            return 254
        case .nunjucks:
            return 461856962
        case .nushell:
            return 446573572
        case .oasv2Json:
            return 834374816
        case .oasv2Yaml:
            return 105187618
        case .oasv3Json:
            return 980062566
        case .oasv3Yaml:
            return 51239111
        case .ocaml:
            return 255
        case .objdump:
            return 256
        case .objectDataInstanceNotation:
            return 985227236
        case .objectscript:
            return 202735509
        case .objectiveC:
            return 257
        case .objectiveCpp:
            return 258
        case .objectiveJ:
            return 259
        case .odin:
            return 889244082
        case .omgrofl:
            return 260
        case .opa:
            return 261
        case .opal:
            return 262
        case .openPolicyAgent:
            return 840483232
        case .openapiSpecificationV2:
            return 848295328
        case .openapiSpecificationV3:
            return 557959099
        case .opencl:
            return 263
        case .openedgeAbl:
            return 264
        case .openqasm:
            return 153739399
        case .openrcRunscript:
            return 265
        case .openscad:
            return 266
        case .openstepPropertyList:
            return 598917541
        case .opentypeFeatureFile:
            return 374317347
        case .optionList:
            return 723589315
        case .org:
            return 267
        case .ox:
            return 268
        case .oxygene:
            return 269
        case .oz:
            return 270
        case .p4:
            return 348895984
        case .pddl:
            return 736235603
        case .pegJs:
            return 81442128
        case .php:
            return 272
        case .plsql:
            return 273
        case .plpgsql:
            return 274
        case .povRaySdl:
            return 275
        case .pact:
            return 756774415
        case .pan:
            return 276
        case .papyrus:
            return 277
        case .parrot:
            return 278
        case .parrotAssembly:
            return 279
        case .parrotInternalRepresentation:
            return 280
        case .pascal:
            return 281
        case .pawn:
            return 271
        case .pep8:
            return 840372442
        case .perl:
            return 282
        case .pic:
            return 425
        case .pickle:
            return 284
        case .picolisp:
            return 285
        case .piglatin:
            return 286
        case .pike:
            return 287
        case .plantuml:
            return 833504686
        case .pod:
            return 288
        case .pod6:
            return 155357471
        case .pogoscript:
            return 289
        case .polar:
            return 839112914
        case .pony:
            return 290
        case .portugol:
            return 832391833
        case .postcss:
            return 262764437
        case .postscript:
            return 291
        case .powerbuilder:
            return 292
        case .powershell:
            return 293
        case .prisma:
            return 499933428
        case .processing:
            return 294
        case .procfile:
            return 305313959
        case .proguard:
            return 716513858
        case .prolog:
            return 295
        case .promela:
            return 441858312
        case .propellerSpin:
            return 296
        case .protocolBuffer:
            return 297
        case .protocolBufferTextFormat:
            return 436568854
        case .publicKey:
            return 298
        case .pug:
            return 179
        case .puppet:
            return 299
        case .pureData:
            return 300
        case .purebasic:
            return 301
        case .purescript:
            return 302
        case .pyret:
            return 252961827
        case .python:
            return 303
        case .pythonConsole:
            return 428
        case .pythonTraceback:
            return 304
        case .qsharp:
            return 697448245
        case .qml:
            return 305
        case .qmake:
            return 306
        case .qtScript:
            return 558193693
        case .quake:
            return 375265331
        case .r:
            return 307
        case .raml:
            return 308
        case .rbs:
            return 899227493
        case .rdoc:
            return 309
        case .realbasic:
            return 310
        case .rexx:
            return 311
        case .rmarkdown:
            return 313
        case .rpc:
            return 1031374237
        case .rpgle:
            return 609977990
        case .rpmSpec:
            return 314
        case .runoff:
            return 315
        case .racket:
            return 316
        case .ragel:
            return 317
        case .raku:
            return 283
        case .rascal:
            return 173616037
        case .rawTokenData:
            return 318
        case .rescript:
            return 501875647
        case .readlineConfig:
            return 538732839
        case .reason:
            return 869538413
        case .reasonligo:
            return 319002153
        case .rebol:
            return 319
        case .recordJar:
            return 865765202
        case .red:
            return 320
        case .redcode:
            return 321
        case .redirectRules:
            return 1020148948
        case .regularExpression:
            return 363378884
        case .renPy:
            return 322
        case .renderscript:
            return 323
        case .richTextFormat:
            return 51601661
        case .ring:
            return 431
        case .riot:
            return 878396783
        case .robotframework:
            return 324
        case .roff:
            return 141
        case .roffManpage:
            return 612669833
        case .rouge:
            return 325
        case .routerosScript:
            return 592853203
        case .ruby:
            return 326
        case .rust:
            return 327
        case .sas:
            return 328
        case .scss:
            return 329
        case .selinuxPolicy:
            return 880010326
        case .smt:
            return 330
        case .sparql:
            return 331
        case .sqf:
            return 332
        case .sql:
            return 333
        case .sqlpl:
            return 334
        case .srecodeTemplate:
            return 335
        case .sshConfig:
            return 554920715
        case .star:
            return 424510560
        case .stl:
            return 455361735
        case .ston:
            return 336
        case .svg:
            return 337
        case .swig:
            return 1066250075
        case .sage:
            return 338
        case .saltstack:
            return 339
        case .sass:
            return 340
        case .scala:
            return 341
        case .scaml:
            return 342
        case .scenic:
            return 619814037
        case .scheme:
            return 343
        case .scilab:
            return 344
        case .self:
            return 345
        case .shaderlab:
            return 664257356
        case .shell:
            return 346
        case .shellcheckConfig:
            return 687511714
        case .shellsession:
            return 347
        case .shen:
            return 348
        case .sieve:
            return 208976687
        case .simpleFileVerification:
            return 735623761
        case .singularity:
            return 987024632
        case .slash:
            return 349
        case .slice:
            return 894641667
        case .slim:
            return 350
        case .smpl:
            return 164123055
        case .smali:
            return 351
        case .smalltalk:
            return 352
        case .smarty:
            return 353
        case .smithy:
            return 1027892786
        case .snakemake:
            return 151241392
        case .solidity:
            return 237469032
        case .soong:
            return 222900098
        case .sourcepawn:
            return 354
        case .splineFontDatabase:
            return 767169629
        case .squirrel:
            return 355
        case .stan:
            return 356
        case .standardMl:
            return 357
        case .starlark:
            return 960266174
        case .stata:
            return 358
        case .stringtemplate:
            return 89855901
        case .stylus:
            return 359
        case .subripText:
            return 360
        case .sugarss:
            return 826404698
        case .supercollider:
            return 361
        case .svelte:
            return 928734530
        case .sway:
            return 271471144
        case .swift:
            return 362
        case .systemverilog:
            return 363
        case .tiProgram:
            return 422
        case .tlVerilog:
            return 118656070
        case .tla:
            return 364
        case .toml:
            return 365
        case .tsql:
            return 918334941
        case .tsv:
            return 1035892117
        case .tsx:
            return 94901924
        case .txl:
            return 366
        case .talon:
            return 959889508
        case .tcl:
            return 367
        case .tcsh:
            return 368
        case .tex:
            return 369
        case .tea:
            return 370
        case .terra:
            return 371
        case .texinfo:
            return 988020015
        case .text:
            return 372
        case .textmateProperties:
            return 981795023
        case .textile:
            return 373
        case .thrift:
            return 374
        case .turing:
            return 375
        case .turtle:
            return 376
        case .twig:
            return 377
        case .typeLanguage:
            return 632765617
        case .typescript:
            return 378
        case .unifiedParallelC:
            return 379
        case .unity3dAsset:
            return 380
        case .unixAssembly:
            return 120
        case .uno:
            return 381
        case .unrealscript:
            return 382
        case .urweb:
            return 383
        case .v:
            return 603371597
        case .vba:
            return 399230729
        case .vbscript:
            return 408016005
        case .vcl:
            return 384
        case .vhdl:
            return 385
        case .vala:
            return 386
        case .valveDataFormat:
            return 544060961
        case .velocityTemplateLanguage:
            return 292377326
        case .verilog:
            return 387
        case .vimHelpFile:
            return 508563686
        case .vimScript:
            return 388
        case .vimSnippet:
            return 81265970
        case .visualBasicNet:
            return 389
        case .visualBasic60:
            return 679594952
        case .volt:
            return 390
        case .vue:
            return 391
        case .vyper:
            return 1055641948
        case .wdl:
            return 374521672
        case .wgsl:
            return 836605993
        case .wavefrontMaterial:
            return 392
        case .wavefrontObject:
            return 393
        case .webOntologyLanguage:
            return 394
        case .webassembly:
            return 956556503
        case .webassemblyInterfaceType:
            return 134534086
        case .webidl:
            return 395
        case .webvtt:
            return 658679714
        case .wgetConfig:
            return 668457123
        case .whiley:
            return 888779559
        case .wikitext:
            return 228
        case .win32MessageFile:
            return 950967261
        case .windowsRegistryEntries:
            return 969674868
        case .witcherScript:
            return 686821385
        case .wollok:
            return 632745969
        case .worldOfWarcraftAddonData:
            return 396
        case .wren:
            return 713580619
        case .xBitmap:
            return 782911107
        case .xFontDirectoryIndex:
            return 208700028
        case .xPixmap:
            return 781846279
        case .x10:
            return 397
        case .xc:
            return 398
        case .xcompose:
            return 225167241
        case .xml:
            return 399
        case .xmlPropertyList:
            return 75622871
        case .xpages:
            return 400
        case .xproc:
            return 401
        case .xquery:
            return 402
        case .xs:
            return 403
        case .xslt:
            return 404
        case .xojo:
            return 405
        case .xonsh:
            return 614078284
        case .xtend:
            return 406
        case .yaml:
            return 407
        case .yang:
            return 408
        case .yara:
            return 805122868
        case .yasnippet:
            return 378760102
        case .yacc:
            return 409
        case .yul:
            return 237469033
        case .zap:
            return 952972794
        case .zil:
            return 973483626
        case .zeek:
            return 40
        case .zenscript:
            return 494938890
        case .zephir:
            return 410
        case .zig:
            return 646424281
        case .zimpl:
            return 411
        case .curlConfig:
            return 992375436
        case .desktop:
            return 412
        case .dircolors:
            return 691605112
        case .ec:
            return 413
        case .edn:
            return 414
        case .fish:
            return 415
        case .hoon:
            return 560883276
        case .jq:
            return 905371884
        case .kvlang:
            return 970675279
        case .mircScript:
            return 517654727
        case .mcfunction:
            return 462488745
        case .mupad:
            return 416
        case .nanorc:
            return 775996197
        case .nesc:
            return 417
        case .ooc:
            return 418
        case .q:
            return 970539067
        case .restructuredtext:
            return 419
        case .robotsTxt:
            return 674736065
        case .sed:
            return 847830017
        case .wisp:
            return 420
        case .xbase:
            return 421
        }
    }
    
    public init?(rawValue: String?) {
        self.init(rawValue: rawValue ?? "")
    }
}
