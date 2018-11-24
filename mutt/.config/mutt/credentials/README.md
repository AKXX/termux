Create a gpg key for password management.

if you have dual security enabled on gmail, then create an app password. 

encrypt your password

```
echo "set my_pass = \"your password here\"" > /tmp/pass
gpg -er "your email address which you used to create gpg key" /tmp/pass
mv /tmp/pass.gpg $HOME/.config/mutt/credentials/ 
rm -f /tmp/pass
```

Now you just have to give your gpg key password whenever you wanna login to email. You may set the cache time for key password.
