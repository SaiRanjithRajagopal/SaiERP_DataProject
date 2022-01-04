CREATE TABLE [Inventory].[Item_Master] (
    [Item_Master_Id]    UNIQUEIDENTIFIER NOT NULL,
    [Item_Grp_Id]       UNIQUEIDENTIFIER NOT NULL,
    [Item_Description]  VARCHAR (1000)   NOT NULL,
    [Stock_Unit]        INT              NOT NULL,
    [Unit_Weight]       INT              NOT NULL,
    [Created_Date]      DATE             NOT NULL,
    [LastModified_Date] DATE             NOT NULL,
    [Created_By]        BIGINT           NULL,
    [LastModified_By]   BIGINT           NULL,
    CONSTRAINT [PK_Item_Master_Id] PRIMARY KEY CLUSTERED ([Item_Master_Id] ASC),
    CONSTRAINT [FK_Created_By_To_Hrms_Employee_Master] FOREIGN KEY ([Created_By]) REFERENCES [Hrms].[Employee_Master] ([Employee_Id]),
    CONSTRAINT [FK_Item_Grp_Id_To_Item_Master] FOREIGN KEY ([Item_Grp_Id]) REFERENCES [Inventory].[Item_Group] ([Group_Id]),
    CONSTRAINT [FK_LastModified_By_To_Hrms_Employee_Master] FOREIGN KEY ([LastModified_By]) REFERENCES [Hrms].[Employee_Master] ([Employee_Id])
);

