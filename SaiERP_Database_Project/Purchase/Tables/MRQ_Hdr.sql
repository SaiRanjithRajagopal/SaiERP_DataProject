CREATE TABLE [Purchase].[MRQ_Hdr] (
    [Ref_Id]            BIGINT  IDENTITY (1, 1) NOT NULL,
    [Total_Items]      TINYINT NOT NULL,
    [Created_By]        BIGINT  NOT NULL,
    [LastModified_By]   BIGINT  NOT NULL,
    [CreatedDate]      DATE    DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate] DATE    NOT NULL,
    CONSTRAINT [PK_MRQ_Hdr_Ref_Id] PRIMARY KEY CLUSTERED ([Ref_Id] ASC), 
    CONSTRAINT [FK_Created_By_MRQ_Hdr_To_Hrms.Employee_Master] FOREIGN KEY ([Created_By]) REFERENCES [Hrms].[Employee_Master] ([Employee_Id]),
    CONSTRAINT [FK_LastModified_By_MRQ_Hdr_To_Hrms.Employee_Master] FOREIGN KEY ([LastModified_By]) REFERENCES [Hrms].[Employee_Master] ([Employee_Id])
);

