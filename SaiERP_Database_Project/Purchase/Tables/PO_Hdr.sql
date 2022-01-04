CREATE TABLE [Purchase].[PO_Hdr] (
    [Ref_Id]             BIGINT IDENTITY (1, 1) NOT NULL,
    [Supplier_Id]    BIGINT NOT NULL,
    [Total_Amount]      MONEY  NULL,
    [Created_By]      BIGINT NOT NULL,
    [LastModified_By] BIGINT NOT NULL,
    [CreatedDate]       DATE   DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate]  DATE   NOT NULL,
    CONSTRAINT [PK_PO_Hdr_Ref_Id] PRIMARY KEY CLUSTERED ([Ref_Id] ASC),
    CONSTRAINT [FK_Created_By_PO_Hdr_To_Hrms.Employee_Master] FOREIGN KEY ([Created_By]) REFERENCES [Hrms].[Employee_Master] ([Employee_Id]),
    CONSTRAINT [FK_LastModified_By_PO_Hdr_To_Hrms.Employee_Master] FOREIGN KEY ([LastModified_By]) REFERENCES [Hrms].[Employee_Master] ([Employee_Id]),
    CONSTRAINT [FK_Supplier_Id_PO_Hdr_To_Supplier.Master] FOREIGN KEY ([Supplier_Id]) REFERENCES [Supplier].[Master] ([Supplier_Id])
);

