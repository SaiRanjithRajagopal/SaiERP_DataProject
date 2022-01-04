CREATE TABLE [Inventory].[Item_Group] (
    [Group_No]            UNIQUEIDENTIFIER NOT NULL,
    [Group_Code]          INT              NOT NULL,
    [Sub_Group_Code]      INT              NOT NULL,
    [Group_Code_Name]     VARCHAR (1000)   NOT NULL,
    [Sub_Group_Code_Name] VARCHAR (1000)   NOT NULL,
    [Created_Date]        DATE             NOT NULL,
    [LastModified_Date]   DATE             NOT NULL,
    [Created_By]          BIGINT           NULL,
    [LastModified_By]     BIGINT           NULL,
    PRIMARY KEY CLUSTERED ([Group_No] ASC),
    FOREIGN KEY ([Created_By]) REFERENCES [Hrms].[Employee_Master] ([Employee_Id]),
    FOREIGN KEY ([LastModified_By]) REFERENCES [Hrms].[Employee_Master] ([Employee_Id])
);

