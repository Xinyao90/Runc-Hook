import subprocess

cmd = "hello.c" 
# Example 
# cmd = HelloWorld.c 
print ("Hey this is Python Script Running\n") 
subprocess.call(["gcc",cmd]) #For Compiling 
subprocess.call("./a.out")  
