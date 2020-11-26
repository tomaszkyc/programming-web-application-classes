### Podlaczenie sie do strony security panel dla VS 2017

Informacje pobralem z linku: [tutaj](https://coderwall.com/p/k3p6dq/asp-net-web-site-administration-tool-for-visual-studio-2017)

1. Uruchom CMD (najlepiej jako administrator).

2. Przejdź do folderu jak poniżej:
```
CD C:\Program Files (x86)\IIS Express
```
3. Wykonaj polecenie jak poniżej:
```
iisexpress.exe /path:"C:\Windows\Microsoft.NET\Framework\v4.0.30319\ASP.NETWebAdminFiles" /vpath:"/WebAdmin" /port:49841 /clr:4.0 /ntlm
```

4. W przeglądarce WWW uruchom poniższą stronę (rekomendowane IE):
```
http://localhost:49841/WebAdmin/default.aspx?applicationPhysicalPath=C:\Users\tomaszadmin23\source\repos\git\programowanie-aplikacji-internetowych\lab\lab-5\zadania\zadanie-7\WebApplication1\WebApplication1&applicationUrl=/WebApplication1
```





