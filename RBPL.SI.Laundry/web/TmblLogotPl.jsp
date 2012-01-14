    public String logout() {
        HttpSession session = request.getSession();
        if (session.getAttribute("username") != null) {
            session.removeAttribute("username");
            session.invalidate();
            return "loginForm.jsp";
        } else {
            session.setAttribute("error", "Anda sudah logout sebelumnya");
            return "loginForm.jsp";
        }
    }
