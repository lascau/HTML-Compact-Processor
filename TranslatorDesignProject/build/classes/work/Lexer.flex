package work;
import static work.Tokens.*;

%% 
%class Lexer
%type Tokens

%{ /*section1 */
    public String lexeme;
%}

/*section 2 */
L = [a-zA-Z_]+
D = [0-9]+
LineTerminator = [ ,\t,\r,\n]+

// Tags
HR_OPEN_TAG = <(H|h)(R|r)
HR_CLOSE_TAG = <\/(H|h)(R|r)>
ABBR_OPEN_TAG = <(A|a)(B|b)(B|b)(R|r)
ABBR_CLOSE_TAG = <\/(A|a)(B|b)(B|b)(R|r)>
ACRONYM_OPEN_TAG = <(A|a)(C|c)(R|r)(O|o)(N|n)(Y|y)(M|m)
ACRONYM_CLOSE_TAG = <\/(A|a)(C|c)(R|r)(O|o)(N|n)(Y|y)(M|m)>
ADDRESS_OPEN_TAG = <(A|a)(D|d)(D|d)(R|r)(E|e)(S|s)(S|s)
ADDRESS_CLOSE_TAG = <\/(A|a)(D|d)(D|d)(R|r)(E|e)(S|s)(S|s)>
APPLET_OPEN_TAG = <(A|a)(P|p)(P|p)(L|l)(E|e)(T|t)
APPLET_CLOSE_TAG = <\/(A|a)(P|p)(P|p)(L|l)(E|e)(T|t)>
B_OPEN_TAG = <(B|b)
B_CLOSE_TAG = <\/(B|b)>
BUTTON_OPEN_TAG = <(B|b)(U|u)(T|t)(T|t)(O|o)(N|n)
BUTTON_CLOSE_TAG =<\/(B|b)(U|u)(T|t)(T|t)(O|o)(N|n)>
CODE_OPEN_TAG = <(C|c)(O|o)(D|d)(E|e)
CODE_CLOSE_TAG = <\/(C|c)(O|o)(D|d)(E|e)>
HEAD_OPEN_TAG = <(H|h)(E|e)(A|a)(D|d)
HEAD_CLOSE_TAG =  <\/(H|h)(E|e)(A|a)(D|d)>
SAMP_OPEN_TAG = <(S|s)(A|a)(M|m)(P|p)
SAMP_CLOSE_TAG = <\/(S|s)(A|a)(M|m)(P|p)>
DEL_OPEN_TAG = <(D|d)(E|e)(L|l)
DEL_CLOSE_TAG = <\/(D|d)(E|e)(L|l)>
XMP_OPEN_TAG = <(X|x)(M|m)(P|p)
XMP_CLOSE_TAG = <\/(X|x)(M|m)(P|p)>
STRONG_OPEN_TAG = <(S|s)(T|t)(R|r)(O|o)(N|n)(G|g)
STRONG_CLOSE_TAG = <\/(S|s)(T|t)(R|r)(O|o)(N|n)(G|g)>
VAR_OPEN_TAG = <(V|v)(A|a)(R|r)
VAR_CLOSE_TAG = <\/(V|v)(A|a)(R|r)>
U_OPEN_TAG = <(U|u)
U_CLOSE_TAG = <\/(U|u)>
S_OPEN_TAG = <(S|s)
S_CLOSE_TAG = <\/(S|s)>
Q_OPEN_TAG = <(Q|q)
Q_CLOSE_TAG = <\/(Q|q)>
I_OPEN_TAG = <(I|i)
I_CLOSE_TAG = <\/(I|i)>
LABEL_OPEN_TAG = <(L|l)(A|a)(B|b)(E|e)(L|l)
LABEL_CLOSE_TAG = <\/(L|l)(A|a)(B|b)(E|e)(L|l)>
LEGEND_OPEN_TAG = <(L|l)(E|e)(G|e)(E|e)(N|n)(D|d)
LEGEND_CLOSE_TAG = <\/(L|l)(E|e)(G|e)(E|e)(N|n)(D|d)>
LISTING_OPEN_TAG = <(L|l)(I|i)(S|s)(T|t)(I|i)(N|n)(G|g)
LISTING_CLOSE_TAG = <\/(L|l)(I|i)(S|s)(T|t)(I|i)(N|n)(G|g)> 
NOFRAMES_OPEN_TAG = <(N|n)(O|o)(F|f)(R|r)(A|a)(M|m)(E|e)(S|s)
NOFRAMES_CLOSE_TAG = <\/(N|n)(O|o)(F|f)(R|r)(A|a)(M|m)(E|e)(S|s)>
DD_OPEN_TAG = <(D|d)(D|d)
DD_CLOSE_TAG = <\/(D|d)(D|d)> 
DFN_OPEN_TAG = <(D|d)(F|f)(N|n)
DFN_CLOSE_TAG = <\/(D|d)(F|f)(N|n)>
DT_OPEN_TAG = <(D|d)(T|t)
DT_CLOSE_TAG = <\/(D|d)(T|t)>
EM_OPEN_TAG = <(E|e)(M|m)
EM_CLOSE_TAG = <\/(E|e)(M|m)>
SCRIPT_OPEN_TAG = <(S|s)(C|c)(R|r)(I|i)(P|p)(T|t)
SCRIPT_CLOSE_TAG = <\/(S|s)(C|c)(R|r)(I|i)(P|p)(T|t)>
SMALL_OPEN_TAG = <(S|s)(M|m)(A|a)(L|l)(L|l)
SMALL_CLOSE_TAG = <\/(S|s)(M|m)(A|a)(L|l)(L|l)>
SPAN_OPEN_TAG = <(S|s)(P|a)(A|a)(N|n)
SPAN_CLOSE_TAG = <\/(S|s)(P|a)(A|a)(N|n)>
STRIKE_OPEN_TAG = <(S|s)(T|t)(R|r)(I|i)(K|k)(E|e)
STRIKE_CLOSE_TAG = <\/(S|s)(T|t)(R|r)(I|i)(K|k)(E|e)>
STYLE_OPEN_TAG = <(S|s)(T|t)(Y|y)(L|l)(E|e)
STYLE_CLOSE_TAG = <\/(S|s)(T|t)(Y|y)(L|l)(E|e)>
SUB_OPEN_TAG = <(S|s)(U|u)(B|b)
SUB_CLOSE_TAG = <\/(S|s)(U|u)(B|b)>
FRAME_OPEN_TAG = <(F|f)(R|r)(A|a)(M|m)(E|e)
FRAME_CLOSE_TAG = <\/(F|f)(R|r)(A|a)(M|m)(E|e)>
FRAMESET_OPEN_TAG = <(F|f)(R|r)(A|a)(M|m)(E|e)(S|s)(E|e)(T|t)
FRAMESET_CLOSE_TAG = <\/(F|f)(R|r)(A|a)(M|m)(E|e)(S|s)(E|e)(T|t)>
IFRAME_OPEN_TAG = <(I|i)(F|f)(R|r)(A|a)(M|m)(E|e)
IFRAME_CLOSE_TAG = <\/(I|i)(F|f)(R|r)(A|a)(M|m)(E|e)>
INS_OPEN_TAG = <(I|i)(N|n)(S|s)
INS_CLOSE_TAG = <\/(I|i)(N|n)(S|s)>
KBD_OPEN_TAG = <(K|k)(B|b)(D|d)
KBD_CLOSE_TAG = <\/(K|k)(B|b)(D|d)>
COLGROUP_OPEN_TAG = <(C|c)(O|o)(L|l)(G|g)(R|r)(O|o)(U|u)(P|p)
COLGROUP_CLOSE_TAG = <\/(C|c)(O|o)(L|l)(G|g)(R|r)(O|o)(U|u)(P|p)>
FIELDSET_OPEN_TAG = <(F|f)(I|i)(E|e)(L|l)(D|d)(S|s)(E|e)(T|t)
FIELDSET_CLOSE_TAG = <\/(F|f)(I|i)(E|e)(L|l)(D|d)(S|s)(E|e)(T|t)>
NOSCRIPT_OPEN_TAG = <(N|n)(O|o)(S|s)(C|c)(R|r)(I|i)(P|p)(T|t)
NOSCRIPT_CLOSE_TAG = <\/(N|n)(O|o)(S|s)(C|c)(R|r)(I|i)(P|p)(T|t)>
OBJECT_OPEN_TAG = <(O|o)(B|b)(J|j)(E|e)(C|c)(T|t)
OBJECT_CLOSE_TAG = <\/(O|o)(B|b)(J|j)(E|e)(C|c)(T|t)>
OPTGROUP_OPEN_TAG = <(O|o)(P|p)(T|t)(G|g)(R|r)(O|o)(U|u)(P|p)
OPTGROUP_CLOSE_TAG = <\/(O|o)(P|p)(T|t)(G|g)(R|r)(O|o)(U|u)(P|p)>
PARAM_OPEN_TAG = <(P|p)(A|a)(R|r)(A|a)(M|m)
PARAM_CLOSE_TAG = <\/(P|p)(A|a)(R|r)(A|a)(M|m)>
PLAINTEXT_OPEN_TAG = <(P|p)(L|l)(A|a)(I|i)(N|n)(T|t)(E|e)(X|x)(T|t)
PLAINTEXT_CLOSE_TAG = <\/(P|p)(L|l)(A|a)(I|i)(N|n)(T|t)(E|e)(X|x)(T|t)>
THEAD_OPEN_TAG = <(T|t)(H|h)(R|r)(E|e)(A|a)(D|d)
THEAD_CLOSE_TAG = <\/(T|t)(H|h)(R|r)(E|e)(A|a)(D|d)> 
TITLE_OPEN_TAG = <(T|t)(I|i)(T|t)(L|l)(E|e)
TITLE_CLOSE_TAG = <\/(T|t)(I|i)(T|t)(L|l)(E|e)>
BLOCKQUOTE_OPEN_TAG = <(B|b)(L|l)(O|o)(C|c)(K|k)(Q|q)(U|u)(O|o)(T|t)(E|e)
BLOCKQUOTE_CLOSE_TAG = <\/(B|b)(L|l)(O|o)(C|c)(K|k)(Q|q)(U|u)(O|o)(T|t)(E|e)> 
CAPTION_OPEN_TAG = <(C|c)(A|a)(P|p)(T|t)(I|i)(O|o)(N|n)
CAPTION_CLOSE_TAG = <\/(C|c)(A|a)(P|p)(T|t)(I|i)(O|o)(N|n)>
CENTER_OPEN_TAG = <(C|c)(E|e)(N|n)(T|t)(E|e)(R|r)
CENTER_CLOSE_TAG = <\/(C|c)(E|e)(N|n)(T|t)(E|e)(R|r)>
CITE_OPEN_TAG = <(C|c)(I|i)(T|t)(E|e)
CITE_CLOSE_TAG = <\/(C|c)(I|i)(T|t)(E|e)>
COL_OPEN_TAG = <(C|c)(O|o)(L|l)
COL_CLOSE_TAG = <\/(C|c)(O|o)(L|l)>
TT_OPEN_TAG = <(T|t)(T|t)
TT_CLOSE_TAG = <\/(T|t)(T|t)>
LI_OPEN_TAG = <(L|l)(I|i)
LI_CLOSE_TAG = <\/(L|l)(I|i)>
LINK_OPEN_TAG = <(L|l)(I|i)(N|n)(K|k)
LINK_CLOSE_TAG = <\/(L|l)(I|i)(N|n)(K|k)>
MAP_OPEN_TAG = <(M|m)(A|a)(P|p)
MAP_CLOSE_TAG = <\/(M|m)(A|a)(P|p)>
MENU_OPEN_TAG = <(M)(E)(N)(U)
MENU_CLOSE_TAG = <\/(M)(E)(N)(U)>
META_OPEN_TAG = <(M)(E)(T)(A)
META_CLOSE_TAG = <\/(M)(E)(T)(A)>
NEXTID_OPEN_TAG = <(N|n)(E|e)(X|x)(T|t)(I|i)(D|d)
NEXTID_CLOSE_TAG = <\/(N|n)(E|e)(X|x)(T|t)(I|i)(D|d)>
OL_OPEN_TAG = <(O|o)(L|l)
OL_CLOSE_TAG = <\/(O|o)(L|l)>
OPTION_OPEN_TAG = <(O|o)(P|p)(T|t)(I|i)(O|o)(N|n)
OPTION_CLOSE_TAG = <\/(O|o)(P|p)(T|t)(I|i)(O|o)(N|n)>
P_OPEN_TAG = <(P|p)
P_CLOSE_TAG =  <\/(P|p)>
PRE_OPEN_TAG = <(P|p)(R|r)(E|e)
PRE_CLOSE_TAG = <\/(P|p)(R|r)(E|e)>
SELECT_OPEN_TAG = <(S|s)(E|e)(L|l)(E|e)(C|c)(T|t)
SELECT_CLOSE_TAG =  <\/(S|s)(E|e)(L|l)(E|e)(C|c)(T|t)>
TABLE_OPEN_TAG = <(T|t)(A|a)(B|b)(L|l)(E|e)
TABLE_CLOSE_TAG = <\/(T|t)(A|a)(B|b)(L|l)(E|e)>
TD_OPEN_TAG = <(T|t)(D|d)
TD_CLOSE_TAG = <\/(T|t)(D|d)>
TEXTAREA_OPEN_TAG = <(T|t)(E|e)(X|x)(T|T)(A|a)(R|r)(E|e)(A|a)
TEXTAREA_CLOSE_TAG = <\/(T|t)(E|e)(X|x)(T|T)(A|a)(R|r)(E|e)(A|a)>
TH_OPEN_TAG = <(T|t)(H|h)
TH_CLOSE_TAG = <\/(T|t)(H|h)>
TR_OPEN_TAG = <(T|t)(R|r)
TR_CLOSE_TAG = <\/(T|t)(R|r)>
UL_OPEN_TAG = <(U|u)(L|l)
UL_CLOSE_TAG = <\/(U|u)(L|l)>
TBODY_OPEN_TAG = <(T|t)(B|b)(O|o)(D|d)(Y|y)
TBODY_CLOSE_TAG = <\/(T|t)(B|b)(O|o)(D|d)(Y|y)>
DL_OPEN_TAG = <(D|d)(L|l)
DL_CLOSE_TAG = <\/(D|d)(L|l)>
FONT_OPEN_TAG = <(F|f)(O|o)(N|n)(T|t)
FONT_CLOSE_TAG = <\/(F|f)(O|o)(N|n)(T|t)>
FORM_OPEN_TAG = <(F|f)(O|o)(R|r)(M|m)
FORM_CLOSE_TAG = <\/(F|f)(O|o)(R|r)(M|m)>
Hn_OPEN_TAG = <(H|h)(N|n)
Hn_CLOSE_TAG = <\/(H|h)(N|n)>
HTML_OPEN_TAG = <(H|h)(T|t)(M|m)(L|l)
HTML_CLOSE_TAG = <\/(H|h)(T|t)(M|m)(L|l)>
IMG_OPEN_TAG = <(I|i)(M|m)(G|g)
IMG_CLOSE_TAG =  <\/(I|i)(M|m)(G|g)>
INPUT_OPEN_TAG = <(I|i)(N|n)(P|p)(U|u)(T|t)
INPUT_CLOSE_TAG = <\/(I|i)(N|n)(P|p)(U|u)(T|t)>
ISINDEX_OPEN_TAG = <(I|i)(S|s)(I|i)(N|n)(D|d)(E|e)(X|x)
ISINDEX_CLOSE_TAG = <\/(I|i)(S|s)(I|i)(N|n)(D|d)(E|e)(X|x)>
BDO_OPEN_TAG = <(B|b)(D|d)(O|o)
BDO_CLOSE_TAG = <\/(B|b)(D|d)(O|o)>
BIG_OPEN_TAG = <(B|b)(I|i)(G|g)
BIG_CLOSE_TAG = <\/(B|b)(I|i)(G|g)>
A_OPEN_TAG = <(A|a)
A_CLOSE_TAG = <\/(A|a)>
AREA_OPEN_TAG = <(A|a)(R|r)(E|e)(A|a)
AREA_CLOSE_TAG = <\/(A|a)(R|r)(E|e)(A|a)>
BASE_OPEN_TAG = <(B|b)(A|a)(S|s)(E|e)
BASE_CLOSE_TAG = <\/(B|b)(A|a)(S|s)(E|e)>
BASEFONT_OPEN_TAG = <(B|b)(A|a)(S|s)(E|e)(F|f)(O|o)(N|n)(T|t)
BASEFONT_CLOSE_TAG = <\/(B|b)(A|a)(S|s)(E|e)(F|f)(O|o)(N|n)(T|t)> 
BODY_OPEN_TAG = <(B|b)(O|o)(D|d)(Y|y)
BODY_CLOSE_TAG = <\/(B|b)(O|o)(D|d)(Y|y)>
BR_OPEN_TAG = <(B|b)(R|r)
BR_CLOSE_TAG = <\/(B|b)(R|r)>
DIR_OPEN_TAG = <(D|d)(I|i)(R|r)
DIR_CLOSE_TAG = <\/(D|d)(I|i)(R|r)>
DIV_OPEN_TAG = <(D|d)(I|i)(V|v)
DIV_CLOSE_TAG = <\/(D|d)(I|i)(V|v)>
 
//Attributes
ALIGN_ATTR = align=\"[^\"]*\"
SIZE_ATTR = size=\"[^\"]*\"
WIDTH_ATTR = width=\"[^\"]*\"
NOSHADE_ATTR = noshade
NAME_ATTR = name=\"[^\"]*\"
HREF_ATTR = href=\"[^\"]*\" 
REL_ATTR = rel=\"[^\"]*\"
REV_ATTR = rev=\"[^\"]*\"
TITLE_ATTR = title=\"[^\"]*\"
URN_ATTR = urn=\"[^\"]*\"
METHODS_ATTR = methods=\"[^\"]*\"
SHAPE_ATTR = shape=\"[^\"]*\"
COORDS_ATTR = coords=\"[^\"]*\"
ALT_ATTR = alt=\"[^\"]*\"
NOHREF_ATTR = nohref=\"[^\"]*\"
BGCOLOR_ATTR = bgcolor=\"[^\"]*\"
BACKGROUND_ATTR = background=\"[^\"]*\"
TEXT_ATTR = text=\"[^\"]*\"
LINK_ATTR = link=\"[^\"]*\"
VLINK_ATTR = vlink=\"[^\"]*\"
ALINK_ATTR = alink=\"[^\"]*\"
VERSION_ATTR = version=\"[^\"]*\"
COLOR_ATTR = color=\"[^\"]*\"
COMPACT_ATTR = compact=\"[^\"]*\"
CLEAR_ATTR = clear=\"[^\"]*\"
ACTION_ATTR = action=\"[^\"]*\"
ENCTYPE_ATTR = enctype=\"[^\"]*\"
METHOD_ATTR = method=\"[^\"]*\"
SRC_ATTR = src=\"[^\"]*\"
HEIGHT_ATTR = height=\"[^\"]*\"
HSPACE_ATTR = hspace=\"[^\"]*\"
VSPACE_ATTR = vspace=\"[^\"]*\"
BORDER_ATTR = border=\"[^\"]*\"
USEMAP_ATTR = usemap=\"[^\"]*\"
ISMAP_ATTR = ismap=\"[^\"]*\"
TYPE_ATTR = type=\"[^\"]*\"
VALUE_ATTR = value=\"[^\"]*\"
MAXLENGTH_ATTR = maxlength=\"[^\"]*\"
CHECKED_ATTR = checked=\"[^\"]*\"
PROMPT_ATTR = prompt=\"[^\"]*\"
ID_ATTR = id=\"[^\"]*\"
HTTP_EQUIV_ATTR = http-equiv=\"[^\"]*\"
CONTENT_ATTR = content=\"[^\"]*\"
START_ATTR = start=\"[^\"]*\"
SELECTED_ATTR = selected=\"[^\"]*\"
MULTIPLE_ATTR = multiple=\"[^\"]*\"
CELLSPACING_ATTR = cellspacing=\"[^\"]*\"
CELLPADDING_ATTR = cellpadding=\"[^\"]*\"
VALIGN_ATTR = valign=\"[^\"]*\"
ROWSPAN_ATTR = rowspan=\"[^\"]*\"
COLSPAN_ATTR = colspan=\"[^\"]*\"
NOWRAP_ATTR = nowrap=\"[^\"]*\"
ROWS_ATTR = rows=\"[^\"]*\"
COLS_ATTR = rows=\"[^\"]*\"

CONTENT = >[^<]*

/* section 3 */
%% 
{LineTerminator} {/*Ignore*/}
"//".* {/*Ignore*/}

//Tags
{HR_OPEN_TAG} {lexeme=yytext(); return HrOpen;}
{HR_CLOSE_TAG} {lexeme=yytext(); return HrClose;}
{ABBR_OPEN_TAG} {lexeme=yytext(); return AbbrOpen;}
{ABBR_CLOSE_TAG} {lexeme=yytext(); return AbbrClose;}
{ACRONYM_OPEN_TAG} {lexeme=yytext(); return AcronymOpen;}
{ACRONYM_CLOSE_TAG} {lexeme=yytext(); return AcronymClose;}
{ADDRESS_OPEN_TAG} {lexeme=yytext(); return AddressOpen;}
{ADDRESS_CLOSE_TAG} {lexeme=yytext(); return AddressClose;}
{APPLET_OPEN_TAG} {lexeme=yytext(); return AppletOpen;}
{APPLET_CLOSE_TAG} {lexeme=yytext(); return AppletClose;}
{B_OPEN_TAG} {lexeme=yytext(); return BOpen;}
{B_CLOSE_TAG} {lexeme=yytext(); return BClose;}
{BUTTON_OPEN_TAG} {lexeme=yytext(); return ButtonOpen;}
{BUTTON_CLOSE_TAG} {lexeme=yytext(); return ButtonClose;}
{CODE_OPEN_TAG} {lexeme=yytext(); return CodeOpen;}
{CODE_CLOSE_TAG} {lexeme=yytext(); return CodeClose;}
{HEAD_OPEN_TAG} {lexeme=yytext(); return HeadOpen;}
{HEAD_CLOSE_TAG} {lexeme=yytext(); return HeadClose;}
{SAMP_OPEN_TAG} {lexeme=yytext(); return SampOpen;}
{SAMP_CLOSE_TAG} {lexeme=yytext(); return SampClose;}
{DEL_OPEN_TAG} {lexeme=yytext(); return DelOpen;}
{DEL_CLOSE_TAG} {lexeme=yytext(); return DelClose;}
{XMP_OPEN_TAG} {lexeme=yytext(); return XmpOpen;}
{XMP_CLOSE_TAG} {lexeme=yytext(); return XmpClose;}
{STRONG_OPEN_TAG} {lexeme=yytext(); return StrongOpen;}
{STRONG_CLOSE_TAG} {lexeme=yytext(); return StrongClose;}
{VAR_OPEN_TAG} {lexeme=yytext(); return VarOpen;}
{VAR_CLOSE_TAG} {lexeme=yytext(); return VarClose;}
{U_OPEN_TAG} {lexeme=yytext(); return UOpen;}
{U_CLOSE_TAG} {lexeme=yytext(); return UClose;}
{S_OPEN_TAG} {lexeme=yytext(); return SOpen;}
{S_CLOSE_TAG} {lexeme=yytext(); return SClose;}
{Q_OPEN_TAG} {lexeme=yytext(); return QOpen;}
{Q_CLOSE_TAG} {lexeme=yytext(); return QClose;}
{I_OPEN_TAG} {lexeme=yytext(); return IOpen;}
{I_CLOSE_TAG} {lexeme=yytext(); return IClose;}
{LABEL_OPEN_TAG} {lexeme=yytext(); return LabelOpen;}
{LABEL_CLOSE_TAG} {lexeme=yytext(); return LabelClose;}
{LEGEND_OPEN_TAG} {lexeme=yytext(); return LegendOpen;}
{LEGEND_CLOSE_TAG} {lexeme=yytext(); return LegendClose;}
{LISTING_OPEN_TAG} {lexeme=yytext(); return ListingOpen;}
{LISTING_CLOSE_TAG} {lexeme=yytext(); return ListingClose;}
{NOFRAMES_OPEN_TAG} {lexeme=yytext(); return NoframesOpen;}
{NOFRAMES_CLOSE_TAG} {lexeme=yytext(); return NoframesClose;}
{DD_OPEN_TAG} {lexeme=yytext(); return DDOpen;}
{DD_CLOSE_TAG} {lexeme=yytext(); return DDClose;}
{DFN_OPEN_TAG} {lexeme=yytext(); return DFNOpen;}
{DFN_CLOSE_TAG} {lexeme=yytext(); return DFNClose;}
{DT_OPEN_TAG} {lexeme=yytext(); return DtOpen;}
{DT_CLOSE_TAG} {lexeme=yytext(); return DtClose;}
{EM_OPEN_TAG}  {lexeme=yytext(); return EmOpen;}
{EM_CLOSE_TAG} {lexeme=yytext(); return EmClose;}
{SCRIPT_OPEN_TAG} {lexeme=yytext(); return ScriptOpen;}
{SCRIPT_CLOSE_TAG} {lexeme=yytext(); return ScriptClose;}
{SMALL_OPEN_TAG} {lexeme=yytext(); return SmallOpen;}
{SMALL_CLOSE_TAG} {lexeme=yytext(); return SmallClose;}
{SPAN_OPEN_TAG} {lexeme=yytext(); return SpanOpen;}
{SPAN_CLOSE_TAG} {lexeme=yytext(); return SpanClose;}
{STRIKE_OPEN_TAG} {lexeme=yytext(); return StrikeOpen;}
{STRIKE_CLOSE_TAG} {lexeme=yytext(); return StrikeClose;}
{STYLE_OPEN_TAG} {lexeme=yytext(); return StyleOpen;}
{STYLE_CLOSE_TAG} {lexeme=yytext(); return StyleClose;}
{SUB_OPEN_TAG} {lexeme=yytext(); return SubOpen;}
{SUB_CLOSE_TAG} {lexeme=yytext(); return SubClose;}
{FRAME_OPEN_TAG} {lexeme=yytext(); return FrameOpen;}
{FRAME_CLOSE_TAG} {lexeme=yytext(); return FrameClose;}
{FRAMESET_OPEN_TAG} {lexeme=yytext(); return FramesetOpen;}
{FRAMESET_CLOSE_TAG} {lexeme=yytext(); return FramesetClose;}
{IFRAME_OPEN_TAG} {lexeme=yytext(); return IframeOpen;}
{IFRAME_CLOSE_TAG} {lexeme=yytext(); return IframeClose;}
{INS_OPEN_TAG} {lexeme=yytext(); return InsOpen;}
{INS_CLOSE_TAG} {lexeme=yytext(); return InsClose;}
{KBD_OPEN_TAG} {lexeme=yytext(); return KbdOpen;}
{KBD_CLOSE_TAG} {lexeme=yytext(); return KbdClose;}
{COLGROUP_OPEN_TAG} {lexeme=yytext(); return ColgroupOpen;}
{COLGROUP_CLOSE_TAG} {lexeme=yytext(); return ColgroupClose;}
{FIELDSET_OPEN_TAG} {lexeme=yytext(); return FieldsetOpen;}
{FIELDSET_CLOSE_TAG} {lexeme=yytext(); return FieldsetClose;}
{NOSCRIPT_OPEN_TAG} {lexeme=yytext(); return NoscriptOpen;}
{NOSCRIPT_CLOSE_TAG} {lexeme=yytext(); return NoscriptClose;}
{OBJECT_OPEN_TAG} {lexeme=yytext(); return ObjectOpen;}
{OBJECT_CLOSE_TAG} {lexeme=yytext(); return ObjectClose;}
{OPTGROUP_OPEN_TAG} {lexeme=yytext(); return OptgroupOpen;}
{OPTGROUP_CLOSE_TAG} {lexeme=yytext(); return OptgroupClose;}
{PARAM_OPEN_TAG} {lexeme=yytext(); return ParamOpen;}
{PARAM_CLOSE_TAG} {lexeme=yytext(); return ParamClose;}
{PLAINTEXT_OPEN_TAG} {lexeme=yytext(); return PlaintextOpen;}
{PLAINTEXT_CLOSE_TAG}  {lexeme=yytext(); return PlaintextClose;}
{THEAD_OPEN_TAG} {lexeme=yytext(); return TheadOpen;}
{THEAD_CLOSE_TAG} {lexeme=yytext(); return TheadClose;}
{TITLE_OPEN_TAG} {lexeme=yytext(); return TitleOpen;}
{TITLE_CLOSE_TAG} {lexeme=yytext(); return TitleClose;}
{BLOCKQUOTE_OPEN_TAG} {lexeme=yytext(); return BlockquoteOpen;}
{BLOCKQUOTE_CLOSE_TAG}  {lexeme=yytext(); return BlockquoteClose;}
{CAPTION_OPEN_TAG} {lexeme=yytext(); return CaptionOpen;}
{CAPTION_CLOSE_TAG} {lexeme=yytext(); return CaptionClose;}
{CENTER_OPEN_TAG } {lexeme=yytext(); return CenterOpen;}
{CENTER_CLOSE_TAG} {lexeme=yytext(); return CenterClose;}
{CITE_OPEN_TAG} {lexeme=yytext(); return CiteOpen;}
{CITE_CLOSE_TAG} {lexeme=yytext(); return CiteClose;}
{COL_OPEN_TAG } {lexeme=yytext(); return ColOpen;}
{COL_CLOSE_TAG} {lexeme=yytext(); return ColClose;}
{TT_OPEN_TAG } {lexeme=yytext(); return TTOpen;}
{TT_CLOSE_TAG } {lexeme=yytext(); return TTClose;}
{LI_OPEN_TAG } {lexeme=yytext(); return LiOpen;}
{LI_CLOSE_TAG } {lexeme=yytext(); return LiClose;}
{LINK_OPEN_TAG } {lexeme=yytext(); return LinkOpen;}
{LINK_CLOSE_TAG}  {lexeme=yytext(); return LinkClose;}
{MAP_OPEN_TAG} {lexeme=yytext(); return MapOpen;}
{MAP_CLOSE_TAG} {lexeme=yytext(); return MapClose;}
{MENU_OPEN_TAG } {lexeme=yytext(); return MenuOpen;}
{MENU_CLOSE_TAG } {lexeme=yytext(); return MenuClose;}
{META_OPEN_TAG } {lexeme=yytext(); return MetaOpen;}
{META_CLOSE_TAG } {lexeme=yytext(); return MetaClose;}
{NEXTID_OPEN_TAG } {lexeme=yytext(); return NextidOpen;}
{NEXTID_CLOSE_TAG} {lexeme=yytext(); return NextidClose;}
{OL_OPEN_TAG } {lexeme=yytext(); return OlOpen;}
{OL_CLOSE_TAG} {lexeme=yytext(); return OlClose;}
{OPTION_OPEN_TAG } {lexeme=yytext(); return OptionOpen;}
{OPTION_CLOSE_TAG}  {lexeme=yytext(); return OptionClose;}
{P_OPEN_TAG } {lexeme=yytext(); return POpen;}
{P_CLOSE_TAG } {lexeme=yytext(); return PClose;}
{PRE_OPEN_TAG}  {lexeme=yytext(); return PreOpen;}
{PRE_CLOSE_TAG } {lexeme=yytext(); return PreClose;}
{SELECT_OPEN_TAG } {lexeme=yytext(); return SelectOpen;}
{SELECT_CLOSE_TAG } {lexeme=yytext(); return SelectClose;}
{TABLE_OPEN_TAG } {lexeme=yytext(); return TableOpen;}
{TABLE_CLOSE_TAG} {lexeme=yytext(); return TableClose;} 
{TD_OPEN_TAG } {lexeme=yytext(); return TdOpen;}
{TD_CLOSE_TAG } {lexeme=yytext(); return TdClose;}
{TEXTAREA_OPEN_TAG } {lexeme=yytext(); return TextareaOpen;}
{TEXTAREA_CLOSE_TAG}  {lexeme=yytext(); return TextareaClose;}
{TH_OPEN_TAG } {lexeme=yytext(); return ThOpen;}
{TH_CLOSE_TAG } {lexeme=yytext(); return ThClose;}
{TR_OPEN_TAG } {lexeme=yytext(); return TrOpen;}
{TR_CLOSE_TAG } {lexeme=yytext(); return TrClose;}
{UL_OPEN_TAG} {lexeme=yytext(); return UlOpen;}
{UL_CLOSE_TAG} {lexeme=yytext(); return UlClose;}
{TBODY_OPEN_TAG}  {lexeme=yytext(); return TbodyOpen;}
{TBODY_CLOSE_TAG}  {lexeme=yytext(); return TbodyClose;}
{DL_OPEN_TAG} {lexeme=yytext(); return DlOpen;}
{DL_CLOSE_TAG} {lexeme=yytext(); return DlClose;}
{FONT_OPEN_TAG}  {lexeme=yytext(); return FontOpen;}
{FONT_CLOSE_TAG}  {lexeme=yytext(); return FontClose;}
{FORM_OPEN_TAG}  {lexeme=yytext(); return FormOpen;}
{FORM_CLOSE_TAG}  {lexeme=yytext(); return FormClose;}
{Hn_OPEN_TAG}  {lexeme=yytext(); return HnOpen;}
{Hn_CLOSE_TAG}  {lexeme=yytext(); return HnClose;}
{HTML_OPEN_TAG}  {lexeme=yytext(); return HtmlOpen;}
{HTML_CLOSE_TAG} {lexeme=yytext(); return HtmlClose;}
{IMG_OPEN_TAG} {lexeme=yytext(); return ImgOpen;}
{IMG_CLOSE_TAG}  {lexeme=yytext(); return ImgClose;}
{INPUT_OPEN_TAG} {lexeme=yytext(); return InputOpen;}
{INPUT_CLOSE_TAG} {lexeme=yytext(); return InputClose;}
{ISINDEX_OPEN_TAG} {lexeme=yytext(); return IsindexOpen;}
{ISINDEX_CLOSE_TAG} {lexeme=yytext(); return IsindexClose;}
{BIG_OPEN_TAG} {lexeme=yytext(); return BigOpen;}
{BIG_CLOSE_TAG} {lexeme=yytext(); return BigClose;}
{BDO_OPEN_TAG} {lexeme=yytext(); return BdoOpen;}
{BDO_CLOSE_TAG} {lexeme=yytext(); return BdoClose;}
{BASEFONT_OPEN_TAG} {lexeme=yytext(); return BaseFontOpen;}
{BASEFONT_CLOSE_TAG} {lexeme=yytext(); return BaseFontClose;}
{BODY_OPEN_TAG} {lexeme=yytext(); return BodyOpen;}
{BODY_CLOSE_TAG} {lexeme=yytext(); return BodyClose;}
{DIV_OPEN_TAG} {lexeme=yytext(); return DivOpen;}
{DIV_CLOSE_TAG} {lexeme=yytext(); return DivClose;}
{A_OPEN_TAG} {lexeme=yytext(); return AOpen;}
{A_CLOSE_TAG} {lexeme=yytext(); return AClose;}
{AREA_OPEN_TAG} {lexeme=yytext(); return AreaOpen;}
{AREA_CLOSE_TAG} {lexeme=yytext(); return AreaClose;}
{BASE_OPEN_TAG} {lexeme=yytext(); return BaseOpen;}
{BASE_CLOSE_TAG} {lexeme=yytext(); return BaseClose;}
{DIR_OPEN_TAG} {lexeme=yytext(); return DirOpen;}
{DIR_CLOSE_TAG} {lexeme=yytext(); return DirClose;}


// Attribute
{SIZE_ATTR} {lexeme=yytext(); return SizeAttr;}
{WIDTH_ATTR} {lexeme=yytext(); return WidthAttr;}
{ALIGN_ATTR} {lexeme=yytext(); return AlignAttr;}
{NOSHADE_ATTR} {lexeme=yytext(); return NoshadeAttr;}
{NAME_ATTR} {lexeme=yytext(); return NameAttr;}
{HREF_ATTR} {lexeme=yytext(); return HrefAttr;}
{REL_ATTR} {lexeme=yytext(); return RelAttr;}
{REV_ATTR} {lexeme=yytext(); return RevAttr;}
{TITLE_ATTR} {lexeme=yytext(); return TitleAttr;}
{URN_ATTR } {lexeme=yytext(); return UrnAttr;}
{METHODS_ATTR} {lexeme=yytext(); return MethodsAttr;}
{SHAPE_ATTR } {lexeme=yytext(); return ShapeAttr;}
{COORDS_ATTR } {lexeme=yytext(); return CoordsAttr;}
{ALT_ATTR } {lexeme=yytext(); return AltAttr;}
{NOHREF_ATTR}  {lexeme=yytext(); return NohrefAttr;}
{BGCOLOR_ATTR } {lexeme=yytext(); return BgcolorAttr;}
{BACKGROUND_ATTR} {lexeme=yytext(); return BackgroundAttr;} 
{TEXT_ATTR } {lexeme=yytext(); return TextAttr;}
{LINK_ATTR } {lexeme=yytext(); return LinkAttr;}
{VLINK_ATTR } {lexeme=yytext(); return VlinkAttr;}
{ALINK_ATTR } {lexeme=yytext(); return AlinkAttr;}
{VERSION_ATTR}  {lexeme=yytext(); return VersionAttr;}
{COLOR_ATTR } {lexeme=yytext(); return ColorAttr;}
{COMPACT_ATTR}  {lexeme=yytext(); return CompactAttr;}
{CLEAR_ATTR } {lexeme=yytext(); return ClearAttr;}
{ACTION_ATTR } {lexeme=yytext(); return ActionAttr;}
{ENCTYPE_ATTR } {lexeme=yytext(); return EnctypeAttr;}
{METHOD_ATTR } {lexeme=yytext(); return MethodAttr;}
{SRC_ATTR} {lexeme=yytext(); return SrcAttr;}
{HEIGHT_ATTR} {lexeme=yytext(); return HeightAttr;}
{HSPACE_ATTR} {lexeme=yytext(); return HspaceAttr;}
{VSPACE_ATTR} {lexeme=yytext(); return VspaceAttr;}
{BORDER_ATTR}  {lexeme=yytext(); return BorderAttr;}
{USEMAP_ATTR}  {lexeme=yytext(); return UsemapAttr;}
{ISMAP_ATTR}  {lexeme=yytext(); return IsmapAttr;}
{TYPE_ATTR}  {lexeme=yytext(); return TypeAttr;}
{VALUE_ATTR}  {lexeme=yytext(); return ValueAttr;}
{MAXLENGTH_ATTR}  {lexeme=yytext(); return MaxlengthAttr;}
{CHECKED_ATTR}  {lexeme=yytext(); return CheckedAttr;}
{PROMPT_ATTR}  {lexeme=yytext(); return PromptAttr;}
{ID_ATTR}  {lexeme=yytext(); return IdAttr;}
{HTTP_EQUIV_ATTR}  {lexeme=yytext(); return HTTP_EQUIV_Attr;}
{CONTENT_ATTR}  {lexeme=yytext(); return ContentAttr;}
{START_ATTR}  {lexeme=yytext(); return StartAttr;}
{SELECTED_ATTR}  {lexeme=yytext(); return SelectedAttr;}
{MULTIPLE_ATTR}  {lexeme=yytext(); return MultipleAttr;}
{CELLSPACING_ATTR} {lexeme=yytext(); return CellspacingAttr;}
{CELLPADDING_ATTR} {lexeme=yytext(); return CellpaddingAttr;}
{VALIGN_ATTR} {lexeme=yytext(); return ValignAttr;}
{ROWSPAN_ATTR} {lexeme=yytext(); return RowspanAttr;}
{COLSPAN_ATTR} {lexeme=yytext(); return ColspanAttr;}
{NOWRAP_ATTR} {lexeme=yytext(); return NowrapAttr;}
{ROWS_ATTR} {lexeme=yytext(); return RowsAttr;}
{COLS_ATTR} {lexeme=yytext(); return ColsAttr;}

//Content
{CONTENT} {lexeme=yytext(); return Content;}
 . {return ERROR;}
