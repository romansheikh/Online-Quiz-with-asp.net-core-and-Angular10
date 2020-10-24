Create Database QuizDB
GO

USE qUIZdb
GO

cREATE TABLE Participant (
Id int primary key identity,
Name varchar (30),
Email varchar(50)
)
go

Create Table  Question (
QuestionID int primary key identity,
QuestionName varchar(max),
Image varchar(max),
Option1 varchar(max),
Option2 varchar(max),
Option3 varchar(max),
Option4 varchar(max),
Answer int not Null
)
go

insert into Question 
values
('Which file contains the code that hosts and runs ASP.NET Core applications?'
, null, 'Program.cs', 'Startup.cs', 'Web.config', 'Global.asax', 1),
 ('Which unique file is used only in ASP.NET Core applications and not supported other classic
ASP.NET applications?', null, 'Program.cs', 'Startup.cs', 'Web.config', 'Global.asax', 1),
('Which of the following files are not found in ASP.NET Core that you usually use in noncondensing ASP.NET applications?', null, 'Web.config', 'OWIN Startup', 'cshtml', 'Layout', 1),
(' Which of the following programming model is/are supported by ASP.NET Core?', null, ' ASP.NET Web forms', 'ASP.NET Web forms', 'Web Api', 'ASP.NET MVC', 2),
('Which one launches ASP.NET Core Applications?', null, 'IIS Web server', 'dotnet driver tool', 'HTTP Extension module', 'OWIN middleware', 2),
('Which class is responsible for building a fully configured instance of a valid ASP.NET Core
host?', null, 'A class that implements IConfiguration interface', ' IIS Worker process', 'WebHostBuilder', ' The default cross-platform ASP.NET embedded web server named Kestrel', 3),
('Which extension method of the WebHostBuilder instance instructs the host about the
embedded web server to use?', null, 'Build ()', 'UseIISIntegration()', 'UseKestrel()', 'UseStartup<T>', 2),
('Which method of the Startup class is used to add in the dependency injection mechanism?', null, 'Configure', 'Configure Services', 'Build', 'Configuration', 2),
('Which method of the IServiceCollection argument the ConfigureServices method in the Startup
class do you use to make available a certain service?', null, 'UseXXX', 'GetXXX', 'SetXXX', 'AddXXX', 4),
('Which method of the Startup class you use to specify the list of valid routes if you want to use
the ASP.NET MVC service?', null, 'Configure', 'ConfigureServices', 'Run', 'Build', 1),

('Which method should you use to configure DI if you want that the caller receives a freshly DIcreated instance of the specified type?', null, 
'AddTransient', 'AddSingleton', 'AddScoped', 'Add', 1),
('Which method of the IApplicationBuilder argument of the Configure method of the Startup
class do you use to enable retrieval of static files such as HTML pages, images, JavaScript files, or
CSS files?', null, 'UseDefaultFiles()', 'UseDirectoryBrowser()', 'UseStaticFiles()', 'UseKestrel()', 3),
('What is the url of an incoming request in ASP.NET Model-View-Controller (MVC) application
model resolved to?', null, ' a pair of model/view', ' a pair of controller/action', 'a pair of controller/model', 'a pair of model/binder', 2),
('Which one the MVC route the engine is not responsible for? ', null, 'resolving the URL to an MVC route', ' invoking the selected controller method', ' processing a view template and producing html', 'processing the results of the action', 3),
('How is an incoming request in an ASP.NET Model-View-Controller (MVC) application served?', null, 'By processing a Razor page', 'By executing a code behind mixed with razor templates', 'executing the given action method of the given controller class', 'None of the above', 3),
('How do you add the MVC route handler service to the ASP.NET core application host?', null, 'Call the UseMvc method in the Configure method of the startup class', 'Call the UseMvcCore method in the Configure method of the startup class', 'Call the AddMVC method the ConfigureServices method of the startup class', 'Call the AddMvcCore method the ConfigureServices method of the startup class', 3)

go



