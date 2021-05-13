-- CreateTable
CREATE TABLE "Task" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "label" TEXT,
    "priority" TEXT,
    "isComplete" BOOLEAN,
    "finishBy" DATETIME,
    "assignedTo" INTEGER,
    FOREIGN KEY ("assignedTo") REFERENCES "Person" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Person" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT,
    "email" TEXT,
    "password" TEXT,
    "isAdmin" BOOLEAN
);

-- CreateIndex
CREATE INDEX "Task.assignedTo_index" ON "Task"("assignedTo");

-- CreateIndex
CREATE UNIQUE INDEX "Person.email_unique" ON "Person"("email");
