//this file is part of �Mule
//Copyright (C)2002-2005 Merkur ( devs@emule-project.net / http://www.emule-project.net )
//
//This program is free software; you can redistribute it and/or
//modify it under the terms of the GNU General Public License
//as published by the Free Software Foundation; either
//version 2 of the License, or (at your option) any later version.
//
//This program is distributed in the hope that it will be useful,
//but WITHOUT ANY WARRANTY; without even the implied warranty of
//MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//GNU General Public License for more details.
//
//You should have received a copy of the GNU General Public License
//along with this program; if not, write to the Free Software
//Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

#pragma once
#include "abstractfile.h"

class CFileDataIO;

class CCollectionFile : public CAbstractFile
{
	DECLARE_DYNAMIC(CCollectionFile)

public:
	CCollectionFile(void);
	CCollectionFile(CFileDataIO* in_data);
	CCollectionFile(CAbstractFile* copyfrom);
	virtual ~CCollectionFile(void);

	bool	InitFromLink(CString sLink);
	void	WriteCollectionInfo(CFileDataIO* out_data);
	virtual void UpdateFileRatingCommentAvail(bool bForceUpdate = false);
};