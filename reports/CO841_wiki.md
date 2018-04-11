# Standardize encryption backdoors?

Intelligence agencies such as the GCHQ (UK) and the NSA (US) are putting a lot of effort into standardizing encryption backdoors over the years. In encryption software, the security depends on two factors, the algorithm design and its implementation. Implanting an encryption backdoor can be done at both levels. Once a backdoor capability is introduced, the idea is to spread its use as much as possible by trying to standardize it. Several ideas have been tested and are described over the three examples.

## The Clipper Chip case

In 1993, right in the middle of a Crypto War [14], a computer chip called the Clipper chip [15] was designed by the NSA in order to provide privacy through encryption for citizens and companies. The US government was worried about the increasingly usage of “unregulated” cryptography.

But providing “strong” encryption wasn’t happening without keeping a way to access the unciphered data after legally-authorized wiretaps. It aimed to be the government way to use encryption in US products and was standardized as such.

This chip was implementing the concept of “key escrow” during the data encryption process. Two keys were used, one belonged to the user and the other one to the government, only these two recipients could get the plaintext back.

This attempt was a more political issue than a technical one. This chip had serious technical flaws [16] from the bypassing of the escrow capability to the fact that it was a hardware component which is way more expensive than a software implementation to provide encryption.

Managing keys that are keep in escrow in a governmental database is a real challenge regarding access rights.

## The Dual\_EC\_DRBG case

Dual\_EC\_DRBG [17] is a pseudorandom number generator algorithm. As strong encryption relies on perfectly generated random numbers, tampering with this generation (in almost every case) breaks all upper security layers. This algorithm was officially introduced by the US government in 2007 among three other algorithms. The four algorithms are based on well-trusted cryptographic primitives which is a proof of quality. This particular algorithm has some “weird” properties [18].

Described as “slow” and suffering from a poor design, some constants were provided with the algorithm without additional detailed explanation. Dual\_EC\_DRBG ended up being standardized by the NIST (National Institute of Standards and Technology) as it came from the “pushy” NSA. Some other well-known institutes such as the ANSI (American National Standards Institute) and ISO (International Organization for Standardization) promoted this algorithm. The backdoor capability was spotted by two Microsoft cryptographers the same year and enables a third party (aware of this weakness) to exploit it and be able to predict the next “random” numbers.

In this case, the backdoor was implemented at the algorithmic level.

## The MIKEY-SAKKE protocol

The MIKEY-SAKKE protocol standardized in the RFC (Request for Comments) 6509 [19] aims at providing phone calls encryption (via VoIP) and was proposed by the UK government as the security protocol for the Secure Chorus voice and video encryption standard. Products made for governmental classified voice communications must implement this algorithm in order to be certified by the GCHQ and used. An implementation of this protocol by the GCHQ is even available online. This protocol is designed in such a way that the keys used for encrypting calls are intentionally shared with a third party to allow investigation when a misconduct arise for example. Massive eavesdropping on encrypted phone calls is therefore possible by the third party actor [20].

The concept of “key escrow” is still used but in a software based implementation this time.

## Analysis

As we’ve seen through the examples, implementing backdoors in encryption standards is a technically complex task. Once a backdoor is implanted, the main issues are about managing the access to it and keep the backdoor as stealth as possible. Since keys are the cornerstone of well-designed cryptographic algorithm, their management is crucial. Inserting a backdoor in a public and standardized algorithm that will be reviewed by the public cryptographic community is not a good idea.

Standardize encryption backdoors can causes collateral damages on global privacy and businesses [21, 22]. A real effort to subvert standards as revealed by the Snowden documents [21] is in action. Money and pressures are used [22] by intelligence agencies to weaken encryption software and this ends up causing harm to the reputation of standardisation committees and companies image.

## References

* [14] En.wikipedia.org. (2017). Crypto Wars. [online] Available at: https://en.wikipedia.org/wiki/Crypto\_Wars [Accessed 29 Nov. 2017].
* [15] Levy, S. (2017). Battle of the Clipper Chip. [online] Nytimes.com. Available at: http://www.nytimes.com/1994/06/12/magazine/battle-of-the-clipper-chip.html [Accessed 29 Nov. 2017].
* [16] Blaze, M. (2011). Key Escrow from a Safe Distance. [online] Available at: http://www.crypto.com/papers/escrow-acsac11.pdf [Accessed 29 Nov. 2017].
* [17] Schneier, B. (2007). The Strange Story of Dual\_EC\_DRBG - Schneier on Security. [online] Schneier.com. Available at: https://www.schneier.com/blog/archives/2007/11/the\_strange\_sto.html [Accessed 29 Nov. 2017].
* [18] Bernstein, D., Lange, T. and Niederhagen, R. (2015). Dual EC: A Standardized Back Door. [online] Available at: https://projectbullrun.org/dual-ec/documents/dual-ec-20150731.pdf [Accessed 29 Nov. 2017].
* [19] Groves, M. (2012). MIKEY-SAKKE: Sakai-Kasahara Key Encryption in Multimedia Internet KEYing (MIKEY). RFC, [online] 6509. Available at: https://tools.ietf.org/html/rfc6509 [Accessed 29 Nov. 2017].
* [20] Murdoch, S. (2016). Insecure by Design: Protocols for Encrypted Phone Calls. [online] Available at: http://sec.cs.ucl.ac.uk/users/smurdoch/papers/ieeecomp16encryptedphone.pdf [Accessed 29 Nov. 2017].
* [21] Menn, J. (2013). Exclusive: Secret contract tied NSA and security industry pioneer. [online] Available at: https://www.reuters.com/article/us-usa-security-rsa/exclusive-secret-contract-tied-nsa-and-security-industry-pioneer-idUSBRE9BJ1C220131220 [Accessed 29 Nov. 2017].
* [22] Borger, J., Ball, J. and Greenwald, G. (2013). Revealed: how US and UK spy agencies defeat internet privacy and security. [online] the Guardian. Available at: https://www.theguardian.com/world/2013/sep/05/nsa-gchq-encryption-codes-security [Accessed 29 Nov. 2017].
