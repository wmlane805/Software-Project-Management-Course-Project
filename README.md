# **Software-Project-Management-Course-Project**
Course Project, group 4, software project management. Kennesaw State university, Group 999

**Changes**

1. Auto redirect local host to dashboard

2. adding a nav bar html so it injects. that way we can change just the navbar html, and it will change across pages
3. Created a master "style.css" so every styling attribute is in one place
4. fixed a minor issue with the html blocks, make sure they include lang="en" xmlns:th="http://www.thymeleaf.org", apparently its in the documentation (itll run without it, but it may be an issue on some browsers or systems.)
5. Reintegrated SQLlite
6. Added seed data to database
7. Added dynamics to proposed pages
   1. Home page has the sidebar of projects, you can add and delete them. Should consider a popup in the design instead of the input fields just sitting on the screen
   2. Requirements page displays stored requirements. Can add new requirements. Asks for Function vs non functional, and a description. May need a requirement title
   3. Risks page does similar to requirements. DOES include a title input and display
   4. Effort page is most complex. Compiles all input members for a requirement, then displays the stored value of effort for that person in an input field. Update the input field and press save at the bottom to update stored data. 
   5. Summary page pulls stored effort data and displays it. 
