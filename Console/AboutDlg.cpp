// aboutdlg.cpp : implementation of the CAboutDlg class
//
/////////////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "resource.h"

#include "aboutdlg.h"

LRESULT CAboutDlg::OnInitDialog(UINT /*uMsg*/, WPARAM /*wParam*/, LPARAM /*lParam*/, BOOL& /*bHandled*/)
{
#ifdef _USE_AERO
  AERO_CONTROL(CButton, m_Ok, IDOK)
  //AERO_CONTROL(CStatic, staticMessage, IDC_STATIC_VERSION)
  //AERO_CONTROL(CStatic, m_Label, IDC_APPTEXT)
  CWindow groupBox(GetDlgItem(IDC_STATIC));
  groupBox.ShowWindow(SW_HIDE);

  this->OpenThemeData(VSCLASS_WINDOW);

    CIcon icon (static_cast<HICON>(
      ::LoadImage(
        ::GetModuleHandle(NULL),
        MAKEINTRESOURCE(IDR_MAINFRAME),
        IMAGE_ICON,
        256,
        256,
        LR_DEFAULTCOLOR)));

    //get the icon info
    ICONINFO ii;
    ::GetIconInfo(icon, &ii);
		//GetIconInfo creates bitmaps for the hbmMask and hbmColor members of ICONINFO.
		//The calling application must manage these bitmaps and delete them when they are no longer necessary.
		m_bmIcon.Attach(ii.hbmColor);
		CBitmap bmMask(ii.hbmMask);

	SetTimer(42, 40);
#else
  CString strMsg;
  strMsg.Format(L"\nConsoleZ %i.%i.%i.%i\n", VERSION_MAJOR, VERSION_MINOR, VERSION_BUILD, VERSION_BUILD2);

  CWindow staticMessage(GetDlgItem(IDC_STATIC_VERSION));
  staticMessage.SetWindowText(strMsg);
#endif

	CenterWindow(GetParent());

	return TRUE;
}

LRESULT CAboutDlg::OnCloseCmd(WORD /*wNotifyCode*/, WORD wID, HWND /*hWndCtl*/, BOOL& /*bHandled*/)
{
	KillTimer(42);
	EndDialog(wID);
	return 0;
}
