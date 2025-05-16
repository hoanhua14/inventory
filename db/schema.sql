CREATE TABLE Products (
    name TEXT NOT NULL,
    id Serial PRIMARY KEY NOT NULL,
    price INT NOT NULL,
    portion TEXT NOT NULL
);

CREATE TABLE Customers (
    name TEXT NOT NULL,
    phone VARCHAR(15) PRIMARY KEY NOT NULL,
    address TEXT NOT NULL,
    delivery TEXT NOT NULL,
    note TEXT NOT NULL,
    payment_method TEXT CHECK (payment_method IN ('cash', 'wire')),
    wire_number TEXT,
    CHECK(
        (payment_method='wire' AND wire_number is NOT NULL)
        or (payment_method='cash' AND wire_number is NULL)
    )
);
