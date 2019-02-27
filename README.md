Interactive && login shell? Yes: /etc/profile, ~/.bash_profile, ~/.bash_login, and ~/.profile
Interactive && non-login? Yes: ~/.bashrc

Non-interactive && --login? Yes: /etc/profile, ~/.bash_profile, ~/.bash_login, and ~/.profile
Non-interactive && !--login (?) Yes: BASH_ENV


Run:

cat > /etc/profile << END
echo In /etc/profile
END

cat > /etc/profile << END
echo In /etc/profile
END

bash --login
exit
