# BrikNicknames
Adds support for nicknames (aliases) to ElvUI and Liquid WeakAuras. This is primarily for my personal/guild use so do not expect much support. You are welcome to copy/modify it per the license.

## Adding aliases
You need a piece of code somewhere (easiest to do via WeakAuras) that registers all the aliases you want the addon to recognize. Code to add an alias looks like this:

```
BrikNicknames:AddAlias("Brik", {"Brikwarlock", "Brikmage", "Brikwarrior"})
```

## Using an alias in ElvUI
The addon adds custom ElvUI tags that you can use in your ElvUI "Name" options for unit frames. The tags are `name:nickname` and `name:nickname:short` (which limits to 10 characters)
