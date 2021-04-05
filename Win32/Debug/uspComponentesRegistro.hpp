// CodeGear C++Builder
// Copyright (c) 1995, 2018 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'uspComponentesRegistro.pas' rev: 33.00 (Windows)

#ifndef UspcomponentesregistroHPP
#define UspcomponentesregistroHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.SysUtils.hpp>
#include <System.Classes.hpp>
#include <Data.DB.hpp>
#include <FireDAC.Comp.DataSet.hpp>
#include <FireDAC.Comp.Client.hpp>
#include <uspQuery.hpp>

//-- user supplied -----------------------------------------------------------

namespace Uspcomponentesregistro
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TspComponentesRegistro;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TspComponentesRegistro : public Uspquery::TspQuery
{
	typedef Uspquery::TspQuery inherited;
	
public:
	/* TspQuery.Create */ inline __fastcall virtual TspComponentesRegistro(System::Classes::TComponent* aOwnerComponent) : Uspquery::TspQuery(aOwnerComponent) { }
	/* TspQuery.Destroy */ inline __fastcall virtual ~TspComponentesRegistro() { }
	
};


//-- var, const, procedure ---------------------------------------------------
extern DELPHI_PACKAGE void __fastcall Register(void);
}	/* namespace Uspcomponentesregistro */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_USPCOMPONENTESREGISTRO)
using namespace Uspcomponentesregistro;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// UspcomponentesregistroHPP
