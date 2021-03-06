CREATE TABLE [Inventory].[Item_Group] (
    [Group_Id]            UNIQUEIDENTIFIER NOT NULL,
    [Group_Code]          INT              NOT NULL,
    [Sub_Group_Code]      INT              NOT NULL,
    [Group_Code_Name]     VARCHAR (1000)   NOT NULL,
    [Sub_Group_Code_Name] VARCHAR (1000)   NOT NULL,
    [Created_Date]        DATE             NOT NULL,
    [LastModified_Date]   DATE             NOT NULL,
    [Created_By]          BIGINT           NULL,
    [LastModified_By]     BIGINT           NULL,
    CONSTRAINT [PK_Item_Group_Group_Id] PRIMARY KEY CLUSTERED ([Group_Id] ASC),
    CONSTRAINT [FK_Created_By_Item_Group_To_Hrms.Employee_Master] FOREIGN KEY ([Created_By]) REFERENCES [Hrms].[Employee_Master] ([Employee_Id]),
    CONSTRAINT [FK_LastModified_By_Item_Group_To_Hrms.Employee_Master] FOREIGN KEY ([LastModified_By]) REFERENCES [Hrms].[Employee_Master] ([Employee_Id])
);

