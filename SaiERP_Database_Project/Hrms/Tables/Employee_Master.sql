CREATE TABLE [Hrms].[Employee_Master] (
    [Employee_Id]   BIGINT         IDENTITY (1, 1) NOT NULL,
    [First_Name]    VARCHAR (1000) NULL,
    [Last_Name]     VARCHAR (1000) NULL,
    [Address]       VARCHAR (2000) NULL,
    [City]          VARCHAR (250)  NULL,
    [State]         VARCHAR (50)   NULL,
    [Post_Code]     VARCHAR (20)   NULL,
    [Join_Date]     DATE           NULL,
    [Homephone]     VARCHAR (20)   NULL,
    [Workphone]     VARCHAR (20)   NULL,
    [Date_Of_Birth] DATE           NULL,
    PRIMARY KEY CLUSTERED ([Employee_Id] ASC)
);

