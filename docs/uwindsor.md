# How to use Easy-MASM on UWindsor Wifi

## GitHub is Blocked on UWindsor Wifi

If you're a student from the University of Windsor who is using Easy-MASM for the COMP-2660 class, you may be wondering why you can't access Easy-MASM's GitHub page on campus. This is because (in their infinite wisdom) the University of Windsor decided to block GitHub on campus wifi.

## Do you think this was a dumb decision? We do too...

You can help reverse this damaging decision by making an IT support ticket asking for GitHub to be unblocked on campus. They may not listen to us if only one of us makes a ticket, but if many of us do, they may very well have to change it.

You can open up a ticket here: [UWindsor ITS support website](https://www.uwindsor.ca/itservices/support/ticket)

## How to Access Easy-MASM in the Meantime

Luckily, even with GitHub blocked you can still access Easy-MASM easily. You have two main options:

### Use a VPN

You can use a VPN to bypass the University's GitHub block. While you should always be cautious of free VPNs, here are a couple of options for you:

- [Windscribe, a solid free VPN which gives you 10gb of traffic per month for free](https://windscribe.com/)
- [GlobalProtect, the free VPN officially provided by the University of Windsor](https://help.cs.uwindsor.ca/view/VPN)

### Use Gitlab

For your convenience, I host a mirror of the Easy-MASM repository on Gitlab, which is not blocked on campus wifi. Whenever you see a command like:

```sh
git clone https://github.com/jere-mie/easy-masm
```

Simply replace `github` with `gitlab`, and you should be able to access the repository. So, the new command would be:

```sh
git clone https://gitlab.com/jere-mie/easy-masm
```

Check out the Easy-MASM Gitlab page here: [https://gitlab.com/jere-mie/easy-masm](https://gitlab.com/jere-mie/easy-masm)

## Contact Me

If you have any other issues with Easy-MASM, please feel free to contact me at [borna113@uwindsor.ca](mailto:borna113@uwindsor.ca)
