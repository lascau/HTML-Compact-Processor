
package work;
import java_cup.runtime.Symbol;

%% 
%class LexerCup
%type java_cup.runtime.Symbol
%cup
%full
%line
%char
%{ /*section1 */
    private Symbol symbol(int type, Object value){
        return new Symbol(type, yyline, yycolumn, value);
    }
    private Symbol symbol(int type){
        return new Symbol(type, yyline, yycolumn);
    }
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
COLS_ATTR = cols=\"[^\"]*\"

//content of any tag
CONTENT = >[^<]*

/* section 3 */

%%
/* 
class |
id |
size |
align |
while {lexeme=yytext(); return Attributes;}
{LineTerminator} {/*Ignore*/}
"//".* {/*Ignore*/}
*/

//Tags
{HR_OPEN_TAG} {return symbol(sym.HrOpen);}
{HR_CLOSE_TAG} {return symbol(sym.HrClose);}
{ABBR_OPEN_TAG} {return symbol(sym.AbbrOpen);}
{ABBR_CLOSE_TAG} {return symbol(sym.AbbrClose);}
{ACRONYM_OPEN_TAG} {return symbol(sym.AcronymOpen);}
{ACRONYM_CLOSE_TAG} {return symbol(sym.AcronymClose);}
{ADDRESS_OPEN_TAG} {return symbol(sym.AddressOpen);}
{ADDRESS_CLOSE_TAG} {return symbol(sym.AddressClose);}
{APPLET_OPEN_TAG} {return symbol(sym.AppletOpen);}
{APPLET_CLOSE_TAG} {return symbol(sym.AppletClose);}
{B_OPEN_TAG} {return symbol(sym.BOpen);}
{B_CLOSE_TAG} {return symbol(sym.BClose);}
{BUTTON_OPEN_TAG} {return symbol(sym.ButtonOpen);}
{BUTTON_CLOSE_TAG} {return symbol(sym.ButtonClose);}
{CODE_OPEN_TAG} {return symbol(sym.CodeOpen);}
{CODE_CLOSE_TAG} {return symbol(sym.CodeClose);}
{HEAD_OPEN_TAG} {return symbol(sym.HeadOpen);}
{HEAD_CLOSE_TAG} {return symbol(sym.HeadClose);}
{SAMP_OPEN_TAG} {return symbol(sym.SampOpen);}
{SAMP_CLOSE_TAG} {return symbol(sym.SampClose);}
{DEL_OPEN_TAG} {return symbol(sym.DelOpen);}
{DEL_CLOSE_TAG} {return symbol(sym.DelClose);}
{XMP_OPEN_TAG} {return symbol(sym.XmpOpen);}
{XMP_CLOSE_TAG} {return symbol(sym.XmpClose);}
{STRONG_OPEN_TAG} {return symbol(sym.StrongOpen);}
{STRONG_CLOSE_TAG} {return symbol(sym.StrongClose);}
{VAR_OPEN_TAG} {return symbol(sym.VarOpen);}
{VAR_CLOSE_TAG} {return symbol(sym.VarClose);}
{U_OPEN_TAG} {return symbol(sym.UOpen);}
{U_CLOSE_TAG} {return symbol(sym.UClose);}
{S_OPEN_TAG} {return symbol(sym.SOpen);}
{S_CLOSE_TAG} {return symbol(sym.SClose);}
{Q_OPEN_TAG} {return symbol(sym.QOpen);}
{Q_CLOSE_TAG} {return symbol(sym.QClose);}
{I_OPEN_TAG} {return symbol(sym.IOpen);}
{I_CLOSE_TAG} {return symbol(sym.IClose);}
{LABEL_OPEN_TAG} {return symbol(sym.LabelOpen);}
{LABEL_CLOSE_TAG} {return symbol(sym.LabelClose);}
{LEGEND_OPEN_TAG} {return symbol(sym.LegendOpen);}
{LEGEND_CLOSE_TAG} {return symbol(sym.LegendClose);}
{LISTING_OPEN_TAG} {return symbol(sym.ListingOpen);}
{LISTING_CLOSE_TAG} {return symbol(sym.ListingClose);}
{NOFRAMES_OPEN_TAG} {return symbol(sym.NoframesOpen);}
{NOFRAMES_CLOSE_TAG} {return symbol(sym.NoframesClose);}
{DD_OPEN_TAG} {return symbol(sym.DdOpen);}
{DD_CLOSE_TAG} {return symbol(sym.DdClose);}
{DFN_OPEN_TAG} {return symbol(sym.DfnOpen);}
{DFN_CLOSE_TAG} {return symbol(sym.DfnClose);}
{DT_OPEN_TAG} {return symbol(sym.DtOpen);}
{DT_CLOSE_TAG} {return symbol(sym.DtClose);}
{EM_OPEN_TAG}  {return symbol(sym.EmOpen);}
{EM_CLOSE_TAG} {return symbol(sym.EmClose);}
{SCRIPT_OPEN_TAG} {return symbol(sym.ScriptOpen);}
{SCRIPT_CLOSE_TAG} {return symbol(sym.ScriptClose);}
{SMALL_OPEN_TAG} {return symbol(sym.SmallOpen);}
{SMALL_CLOSE_TAG} {return symbol(sym.SmallClose);}
{SPAN_OPEN_TAG} {return symbol(sym.SpanOpen);}
{SPAN_CLOSE_TAG} {return symbol(sym.SpanClose);}
{STRIKE_OPEN_TAG} {return symbol(sym.StrikeOpen);}
{STRIKE_CLOSE_TAG} {return symbol(sym.StrikeClose);}
{STYLE_OPEN_TAG} {return symbol(sym.StyleOpen);}
{STYLE_CLOSE_TAG} {return symbol(sym.StyleClose);}
{SUB_OPEN_TAG} {return symbol(sym.SubOpen);}
{SUB_CLOSE_TAG} {return symbol(sym.SubClose);}
{FRAME_OPEN_TAG} {return symbol(sym.FrameOpen);}
{FRAME_CLOSE_TAG} {return symbol(sym.FrameClose);}
{FRAMESET_OPEN_TAG} {return symbol(sym.FramesetOpen);}
{FRAMESET_CLOSE_TAG} {return symbol(sym.FramesetClose);}
{IFRAME_OPEN_TAG} {return symbol(sym.IframeOpen);}
{IFRAME_CLOSE_TAG} {return symbol(sym.IframeClose);}
{INS_OPEN_TAG} {return symbol(sym.InsOpen);}
{INS_CLOSE_TAG} {return symbol(sym.InsClose);}
{KBD_OPEN_TAG} {return symbol(sym.KbdOpen);}
{KBD_CLOSE_TAG} {return symbol(sym.KbdClose);}
{COLGROUP_OPEN_TAG} {return symbol(sym.ColgroupOpen);}
{COLGROUP_CLOSE_TAG} {return symbol(sym.ColgroupClose);}
{FIELDSET_OPEN_TAG} {return symbol(sym.FieldsetOpen);}
{FIELDSET_CLOSE_TAG} {return symbol(sym.FieldsetClose);}
{NOSCRIPT_OPEN_TAG} {return symbol(sym.NoscriptOpen);}
{NOSCRIPT_CLOSE_TAG} {return symbol(sym.NoscriptClose);}
{OBJECT_OPEN_TAG} {return symbol(sym.ObjectOpen);}
{OBJECT_CLOSE_TAG} {return symbol(sym.ObjectClose);}
{OPTGROUP_OPEN_TAG} {return symbol(sym.OptgroupOpen);}
{OPTGROUP_CLOSE_TAG} {return symbol(sym.OptgroupClose);}
{PARAM_OPEN_TAG} {return symbol(sym.ParamOpen);}
{PARAM_CLOSE_TAG} {return symbol(sym.ParamClose);}
{PLAINTEXT_OPEN_TAG} {return symbol(sym.PlaintextOpen);}
{PLAINTEXT_CLOSE_TAG}  {return symbol(sym.PlaintextClose);}
{THEAD_OPEN_TAG} {return symbol(sym.TheadOpen);}
{THEAD_CLOSE_TAG} {return symbol(sym.TheadClose);}
{TITLE_OPEN_TAG} {return symbol(sym.TitleOpen);}
{TITLE_CLOSE_TAG} {return symbol(sym.TitleClose);}
{BLOCKQUOTE_OPEN_TAG} {return symbol(sym.BlockquoteOpen);}
{BLOCKQUOTE_CLOSE_TAG}  {return symbol(sym.BlockquoteClose);}
{CAPTION_OPEN_TAG} {return symbol(sym.CaptionOpen);}
{CAPTION_CLOSE_TAG} {return symbol(sym.CaptionClose);}
{CENTER_OPEN_TAG } {return symbol(sym.CenterOpen);}
{CENTER_CLOSE_TAG} {return symbol(sym.CenterClose);}
{CITE_OPEN_TAG} {return symbol(sym.CiteOpen);}
{CITE_CLOSE_TAG} {return symbol(sym.CiteClose);}
{COL_OPEN_TAG } {return symbol(sym.ColOpen);}
{COL_CLOSE_TAG} {return symbol(sym.ColClose);}
{TT_OPEN_TAG } {return symbol(sym.TtOpen);}
{TT_CLOSE_TAG } {return symbol(sym.TtClose);}
{LI_OPEN_TAG } {return symbol(sym.LiOpen);}
{LI_CLOSE_TAG } {return symbol(sym.LiClose);}
{LINK_OPEN_TAG } {return symbol(sym.LinkOpen);}
{LINK_CLOSE_TAG}  {return symbol(sym.LinkClose);}
{MAP_OPEN_TAG} {return symbol(sym.MapOpen);}
{MAP_CLOSE_TAG} {return symbol(sym.MapClose);}
{MENU_OPEN_TAG } {return symbol(sym.MenuOpen);}
{MENU_CLOSE_TAG } {return symbol(sym.MenuClose);}
{META_OPEN_TAG } {return symbol(sym.MetaOpen);}
{META_CLOSE_TAG } {return symbol(sym.MetaClose);}
{NEXTID_OPEN_TAG } {return symbol(sym.NextidOpen);}
{NEXTID_CLOSE_TAG} {return symbol(sym.NextidClose);}
{OL_OPEN_TAG } {return symbol(sym.OlOpen);}
{OL_CLOSE_TAG} {return symbol(sym.OlClose);}
{OPTION_OPEN_TAG } {return symbol(sym.OptionOpen);}
{OPTION_CLOSE_TAG}  {return symbol(sym.OptionClose);}
{P_OPEN_TAG } {return symbol(sym.POpen);}
{P_CLOSE_TAG } {return symbol(sym.PClose);}
{PRE_OPEN_TAG}  {return symbol(sym.PreOpen);}
{PRE_CLOSE_TAG } {return symbol(sym.PreClose);}
{SELECT_OPEN_TAG } {return symbol(sym.SelectOpen);}
{SELECT_CLOSE_TAG } {return symbol(sym.SelectClose);}
{TABLE_OPEN_TAG } {return symbol(sym.TableOpen);}
{TABLE_CLOSE_TAG} {return symbol(sym.TableClose);}
{TD_OPEN_TAG } {return symbol(sym.TdOpen);}
{TD_CLOSE_TAG } {return symbol(sym.TdClose);}
{TEXTAREA_OPEN_TAG } {return symbol(sym.TextareaOpen);}
{TEXTAREA_CLOSE_TAG}  {return symbol(sym.TextareaClose);}
{TH_OPEN_TAG } {return symbol(sym.ThOpen);}
{TH_CLOSE_TAG } {return symbol(sym.ThClose);}
{TR_OPEN_TAG } {return symbol(sym.TrOpen);}
{TR_CLOSE_TAG } {return symbol(sym.TrClose);}
{UL_OPEN_TAG} {return symbol(sym.UlOpen);}
{UL_CLOSE_TAG} {return symbol(sym.UlClose);}
{TBODY_OPEN_TAG}  {return symbol(sym.TbodyOpen);}
{TBODY_CLOSE_TAG}  {return symbol(sym.TbodyClose);}
{DL_OPEN_TAG} {return symbol(sym.DlOpen);}
{DL_CLOSE_TAG} {return symbol(sym.DlClose);}
{FONT_OPEN_TAG}  {return symbol(sym.FontOpen);}
{FONT_CLOSE_TAG}  {return symbol(sym.FontClose);}
{FORM_OPEN_TAG} {return symbol(sym.FormOpen);}
{FORM_CLOSE_TAG}  {return symbol(sym.FormClose);}
{Hn_OPEN_TAG}  {return symbol(sym.HnOpen);}
{Hn_CLOSE_TAG}  {return symbol(sym.HnClose);}
{HTML_OPEN_TAG}  {return symbol(sym.HtmlOpen);}
{HTML_CLOSE_TAG} {return symbol(sym.HtmlClose);}
{IMG_OPEN_TAG} {return symbol(sym.ImgOpen);}
{IMG_CLOSE_TAG}  {return symbol(sym.ImgClose);}
{INPUT_OPEN_TAG} {return symbol(sym.InputOpen);}
{INPUT_CLOSE_TAG} {return symbol(sym.InputClose);}
{ISINDEX_OPEN_TAG} {return symbol(sym.IsindexOpen);}
{ISINDEX_CLOSE_TAG} {return symbol(sym.IsindexClose);}
{BIG_OPEN_TAG} {return symbol(sym.BigOpen);}
{BIG_CLOSE_TAG} {return symbol(sym.BigClose);}
{BDO_OPEN_TAG} {return symbol(sym.BdoOpen);}
{BDO_CLOSE_TAG} {return symbol(sym.BdoClose);}
{BASEFONT_OPEN_TAG} {return symbol(sym.BasefontOpen);}
{BASEFONT_CLOSE_TAG} {return symbol(sym.BasefontClose);}
{BODY_OPEN_TAG} {return symbol(sym.BodyOpen);}
{BODY_CLOSE_TAG} {return symbol(sym.BodyClose);}
{DIV_OPEN_TAG} {return symbol(sym.DivOpen);}
{DIV_CLOSE_TAG} {return symbol(sym.DivClose);}
{A_OPEN_TAG} {return symbol(sym.AOpen);}
{A_CLOSE_TAG} {return symbol(sym.AClose);}
{AREA_OPEN_TAG} {return symbol(sym.AreaOpen);}
{AREA_CLOSE_TAG} {return symbol(sym.AreaClose);}
{BASE_OPEN_TAG} {return symbol(sym.BaseOpen);}
{BASE_CLOSE_TAG} {return symbol(sym.BaseClose);}
{DIR_OPEN_TAG} {return symbol(sym.DirOpen);}
{DIR_CLOSE_TAG} {return symbol(sym.DirClose);}
{BR_OPEN_TAG} {return symbol(sym.BrOpen);}
{BR_CLOSE_TAG} {return symbol(sym.BrClose);}


// Attribute
{SIZE_ATTR} {return symbol(sym.SizeAttr);}
{WIDTH_ATTR} {return symbol(sym.WidthAttr);}
{ALIGN_ATTR} {return symbol(sym.AlignAttr);}
{NOSHADE_ATTR} {return symbol(sym.NoshadeAttr);}
{NAME_ATTR} {return symbol(sym.NameAttr);}
{HREF_ATTR} {return symbol(sym.HrefAttr);}
{REL_ATTR} {return symbol(sym.RelAttr);}
{REV_ATTR} {return symbol(sym.RevAttr);}
{TITLE_ATTR} {return symbol(sym.TitleAttr);}
{URN_ATTR } {return symbol(sym.UrnAttr);}
{METHODS_ATTR} {return symbol(sym.MethodsAttr);}
{SHAPE_ATTR } {return symbol(sym.ShapeAttr);}
{COORDS_ATTR } {return symbol(sym.CoordsAttr);}
{ALT_ATTR } {return symbol(sym.AltAttr);}
{NOHREF_ATTR}  {return symbol(sym.NohrefAttr);}
{BGCOLOR_ATTR } {return symbol(sym.BgcolorAttr);}
{BACKGROUND_ATTR} {return symbol(sym.BackgroundAttr);}
{TEXT_ATTR } {return symbol(sym.TextAttr);}
{LINK_ATTR } {return symbol(sym.LinkAttr);}
{VLINK_ATTR } {return symbol(sym.VlinkAttr);}
{ALINK_ATTR } {return symbol(sym.AlinkAttr);}
{VERSION_ATTR}  {return symbol(sym.VersionAttr);}
{COLOR_ATTR } {return symbol(sym.ColorAttr);}
{COMPACT_ATTR}  {return symbol(sym.CompactAttr);}
{CLEAR_ATTR } {return symbol(sym.ClearAttr);}
{ACTION_ATTR } {return symbol(sym.ActionAttr);}
{ENCTYPE_ATTR } {return symbol(sym.EnctypeAttr);}
{METHOD_ATTR } {return symbol(sym.MethodAttr);}
{SRC_ATTR} {return symbol(sym.SrcAttr);}
{HEIGHT_ATTR} {return symbol(sym.HeightAttr);}
{HSPACE_ATTR} {return symbol(sym.HspaceAttr);}
{VSPACE_ATTR} {return symbol(sym.VspaceAttr);}
{BORDER_ATTR}  {return symbol(sym.BorderAttr);}
{USEMAP_ATTR}  {return symbol(sym.UsemapAttr);}
{ISMAP_ATTR}  {return symbol(sym.IsmapAttr);}
{TYPE_ATTR}  {return symbol(sym.TypeAttr);}
{VALUE_ATTR}  {return symbol(sym.ValueAttr);}
{MAXLENGTH_ATTR}  {return symbol(sym.MaxlengthAttr);}
{CHECKED_ATTR}  {return symbol(sym.CheckedAttr);}
{PROMPT_ATTR}  {return symbol(sym.PromptAttr);}
{ID_ATTR}  {return symbol(sym.IdAttr);}
{HTTP_EQUIV_ATTR}  {return symbol(sym.HttpEquivAttr);}
{CONTENT_ATTR}  {return symbol(sym.ContentAttr);}
{START_ATTR}  {return symbol(sym.StartAttr);}
{SELECTED_ATTR}  {return symbol(sym.SelectedAttr);}
{MULTIPLE_ATTR}  {return symbol(sym.MultipleAttr);}
{CELLSPACING_ATTR} {return symbol(sym.CellspacingAttr);}
{CELLPADDING_ATTR} {return symbol(sym.CellpaddingAttr);}
{VALIGN_ATTR} {return symbol(sym.ValignAttr);}
{ROWSPAN_ATTR} {return symbol(sym.RowspanAttr);}
{COLSPAN_ATTR} {return symbol(sym.ColspanAttr);}
{NOWRAP_ATTR} {return symbol(sym.NowrapAttr);}
{ROWS_ATTR} {return symbol(sym.RowsAttr);}
{COLS_ATTR} {return symbol(sym.ColsAttr);}

//Content
{CONTENT} {return symbol(sym.Content);}
 . {return symbol(sym.ERROR);}
