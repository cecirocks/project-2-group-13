-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/DVdvNf
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "category_df" (
    "category_id" varchar(10)   NOT NULL,
    "category" varchar(50)   NOT NULL,
    CONSTRAINT "pk_category_df" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory_df" (
    "subcategory_id" varchar(10)   NOT NULL,
    "subcategory" varchar(50)   NOT NULL,
    CONSTRAINT "pk_subcategory_df" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "campaign_df" (
    "cf_id" varchar(10)   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(50)   NOT NULL,
    "description" varchar(100)   NOT NULL,
    "goal" int   NOT NULL,
    "pledged" int   NOT NULL,
    "outcome" int   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(3)   NOT NULL,
    "currency" int   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(10)   NOT NULL,
    "subcategory_Id" varchar(10)   NOT NULL,
    CONSTRAINT "pk_campaign_df" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "contacts_df" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(15)   NOT NULL,
    "last_name" varchar(15)   NOT NULL,
    "email" varchar(50)   NOT NULL,
    CONSTRAINT "pk_contacts_df" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "category_df" ADD CONSTRAINT "fk_category_df_category_id" FOREIGN KEY("category_id")
REFERENCES "campaign_df" ("category_id");

ALTER TABLE "subcategory_df" ADD CONSTRAINT "fk_subcategory_df_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "campaign_df" ("subcategory_Id");

ALTER TABLE "contacts_df" ADD CONSTRAINT "fk_contacts_df_contact_id" FOREIGN KEY("contact_id")
REFERENCES "campaign_df" ("contact_id");

