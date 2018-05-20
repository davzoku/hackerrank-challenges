## Definition:
### Distributed Systems
 A distributed system is a model in which components located on networked computers *communicate and coordinate their actions by passing messages*.
 
 The components interact with each other in order to achieve a common goal. Three significant characteristics of distributed systems are: 
 	+ concurrency of components, 
	+ lack of a global clock,
	+ independent failure of components.

 Examples of distributed systems vary from SOA-based systems to massively multiplayer online games to peer-to-peer applications.
 
 (SOA = Server-Oriented Architecture)
 
### RPC:
 a remote procedure call (RPC) is when a computer program causes a procedure (subroutine) to execute in a different address space (commonly on another computer on a shared network), which is coded as if it were a normal (local) procedure call, without the programmer explicitly coding the details for the remote interaction. 
 
### Stub:
A stub in distributed computing is a piece of code that converts parameters passed between client and server during a remote procedure call (RPC).

## MCQ

1. An RPC (remote procedure call) is initiated by the: 
	+ **Cilent**

2. RPC works between two processes. These processes may be: 
	+ **on the same computer**
	+ **on different computers connected with a network**
	
3. The local operating system on the server machine passes the incoming packets to the: 
	+ **server stub**

4. ___ is a framework for distributed objects on the Microsoft platform.
	+ **Distributed Component Object Model (DCOM)**
	
5. ___ is a framework for distributed objects on the Microsoft platform.
	+ **DDObjects**
	
6. ___ is a framework for distributed components using a messaging paradigm.
	+ **Jt**
	
7. ___ is a Sun specification for a distributed, shared memory.
	+ ** JavaSpaces**
	
8. ___ is a framework for distributed objects using the Python programming language.
	+ **Pyro**
	
9. The reduce function typically outputs a smaller set than what is input to it.
	+ **TRUE**

10. If there are M partitions of the input, there are M map workers running simultaneously. True or False?
   + **False. There are generally less worker nodes than partitions.**