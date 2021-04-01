## core java
equals / hashCode  
comparable (compareTo) vs Comparator
- Comparable interface forces Class to implement compareTo; which is useful for default sort implementation
- Comparator (interface) has "compare method, which takes two arguments and compares; which is useful to implement sorting logic outside of declaring class. Sometimes, the source code of the original class may not be available, in which case this is the only option. 
stringbuffer vs stringbuilder  
- stringbuilder is not thread safe

transient / volatile  
- volatile: always read value from main memory
- transient: these variables will not be serialized during persistence  

exception handling  
checked unchecked exceptions   
- checked exceptions: compile time verification.. like IOException, SQLExceptions
- unchecked: sub classes of (java.lang.RuntimeException), which re runtime exceptions like NullPointerEx, ArrayIndexOutOfBoudsEx etc. 
- java.lang.Error: Unrecoverable exceptions like OutOfMemeroExceptions
- To create custom checked exceptions, extend java.lang.Exception
- To Create custom unchecked exceptions, extend java.lang.RuntimeException
	Error 				extends 	Throwable (unchecked)
	Exception 			extends 	Throwable (checked)
	RuntimeException 	extends 	Exception (unchecked)

multi thread programming 
- java8 has "ExecutorService" concurrency API
- initialize with 
ExecutorService executor = Executors.newSingleThreadExecutor();
- run it as 
executor.submit(() ->{
	// statements
}); 
synchronized  
java 8  
forEach  
api streams  
permGen vs metaspace (java8+)  

final blank variable  
- final class level variable without assigning any value. a value can only be assigned by a constructor  
- if its local variable, it can be initialized only once. 
- if this is a static variable, only static block can initialize it.  


overriding with different return type:  
since java5, method can be overritten by changing return type, only if the returning type of the sub-class method is a subclas of parent's class method return type.  


## Spring
dependency injection
transactions
### Spring DI
- default bean scope is singleton
- prototype scope returns a new object each time a bean is referred. 
### BeanFactory vs ApplicationContext
- BeanFactory is useful for lazy loading. 
- ApplicationCotext is eagar loading of beans. 
### Spring bean scope
- singleton: this is default
- prototype: new object created eachtime a bean is requested.
- request: request scope
- session: sesion scope
- global: till lifecycyle of the application context
- Single transaction for multiple DAO methods: check PROPAGATION_REQUIRED, PROPAGATION_REQUIRES_NEW, PROPAGATION_NESTED
	PROPAGATION_NESTED
		Execute within a nested transaction if a current transaction exists, behave like PROPAGATION_REQUIRED otherwise.
	PROPAGATION_REQUIRED
		Support a current transaction; create a new one if none exists.
	PROPAGATION_REQUIRES_NEW
		Create a new transaction, suspending the current transaction if one exists.
### transactions
2 phase commit
distributes transaction management
XAresource


## spring rest security

## spring boot
declare application.properties to override springboot default settings
GET - fetche resources
POST - creates new resource - NOT idempotent
PUT - udpates current resource - idempotent (many invocations is same as single invocation)
DELETE - deletes a resource

## design patterns


