//
//  DHFont.m
//  DHxls
//
//  Created by David Hoerl on 10/7/08.
//  Copyright 2008-2013 David Hoerl. All rights reserved.
//

#include <stdint.h>
#include <string>

#include "xlslib.h"

#if 0
#import "font.h"
#endif

using namespace xlslib_core;
using namespace xlslib_strings;

#import "DHFont.h"

#define FONT(a) ((xlslib_core::font_t *)(a))

@implementation DHFont
{
	void		*_font;		// xlslib_core::CFont *
}

-(instancetype)initWithFont:(void *)ft
{
	self = [super init];
	
	_font = ft;
	
	return self;
}
-(void *)font
{
	return _font;
}

-(void)setName:(NSString *)name
{
	FONT(_font)->SetName([name cStringUsingEncoding:NSASCIIStringEncoding]);
}
-(NSString *)name
{
	const std::string&	name = FONT(_font)->GetName();
	
	NSString *string = [NSString stringWithCString:name.c_str() encoding:NSASCIIStringEncoding];
	
	return string;
}
-(void)setHeight:(uint16_t)fntheight
{
	FONT(_font)->SetHeight(fntheight);
}
-(uint16_t)height
{
	return FONT(_font)->GetHeight();
}
-(void)setBoldStyle:(boldness_option_t)fntboldness
{
	FONT(_font)->SetBoldStyle(fntboldness);
}
-(uint16_t)boldStyle
{
	return FONT(_font)->GetBoldStyle();
}
-(void)setUnderlineStyle:(underline_option_t)fntunderline
{
	FONT(_font)->SetUnderlineStyle(fntunderline);
}
-(uint8_t)underlineStyle
{
	return FONT(_font)->GetBoldStyle();
}
-(void)SetScriptStyle:(script_option_t)fntscript
{
	FONT(_font)->SetScriptStyle(fntscript);
}
-(uint16_t)scriptStyle
{
	return FONT(_font)->GetBoldStyle();
}
-(void)setColorName:(color_name_t)fntcolor
{
	FONT(_font)->SetColor(fntcolor);
}
-(void)setColorIndex:(unsigned8_t)fntcolor
{
	FONT(_font)->SetColor(fntcolor);
}
-(uint16_t)colorIndex
{
	return FONT(_font)->GetColorIdx();
}
#if 1
-(void)setItalic:(BOOL)it
{
	FONT(_font)->SetItalic(it);
}
-(BOOL)italic
{
	return (BOOL)FONT(_font)->GetItalic();
}
-(void)setStrikeout:(BOOL)so
{
	FONT(_font)->SetStrikeout(so);
}
-(BOOL)strikeOut
{
	return (BOOL)FONT(_font)->GetStrikeout();
}
-(void)setOutline:(BOOL)ol
{
	FONT(_font)->SetOutline(ol);
}
-(BOOL)outline
{
	return (BOOL)FONT(_font)->GetOutline();
}
-(void)setShadow:(BOOL)sh
{
	FONT(_font)->SetShadow(sh);
}
-(BOOL)shadow
{
	return (BOOL)FONT(_font)->GetShadow();
}
#endif

-(void)setFamily:(uint8_t)fam
{
	FONT(_font)->SetFamily(fam);
}
-(uint8_t)family
{
	return FONT(_font)->GetFamily();
}
-(void)setCharset:(uint8_t)fam
{
	FONT(_font)->SetCharset(fam);
}
-(uint8_t)charset
{
	return FONT(_font)->GetCharset();
}
@end
