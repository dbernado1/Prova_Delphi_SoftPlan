// CodeGear C++Builder
// Copyright (c) 1995, 2018 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'uspQuery.pas' rev: 33.00 (Windows)

#ifndef UspqueryHPP
#define UspqueryHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <FireDAC.Comp.Client.hpp>
#include <System.Classes.hpp>
#include <System.SysUtils.hpp>
#include <FireDAC.Phys.hpp>
#include <FireDAC.Comp.DataSet.hpp>
#include <Data.DB.hpp>

//-- user supplied -----------------------------------------------------------

namespace Uspquery
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TspQuery;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TspQuery : public Firedac::Comp::Client::TFDQuery
{
	typedef Firedac::Comp::Client::TFDQuery inherited;
	
private:
	System::Classes::TStringList* FspCondicoes;
	System::Classes::TStringList* FspColunas;
	System::Classes::TStringList* FspTabelas;
	
public:
	void __fastcall GeraSQL();
	__fastcall virtual TspQuery(System::Classes::TComponent* aOwnerComponent);
	__fastcall virtual ~TspQuery();
	
__published:
	__property System::Classes::TStringList* spCondicoes = {read=FspCondicoes, write=FspCondicoes};
	__property System::Classes::TStringList* spColunas = {read=FspColunas, write=FspColunas};
	__property System::Classes::TStringList* spTabelas = {read=FspTabelas, write=FspTabelas};
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Uspquery */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_USPQUERY)
using namespace Uspquery;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// UspqueryHPP
