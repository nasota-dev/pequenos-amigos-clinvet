-- CreateTable
CREATE TABLE "public"."funcionario" (
    "id" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "cpf" INTEGER NOT NULL,
    "dataNascimento" TIMESTAMP(3) NOT NULL,
    "telefone" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "endereco" TEXT NOT NULL,
    "login" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "cargo" TEXT NOT NULL,
    "crmv" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updateAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "funcionario_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."tutor" (
    "id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updateAt" TIMESTAMP(3) NOT NULL,
    "nome" TEXT NOT NULL,
    "cpf" TEXT NOT NULL,
    "dataNascimento" TIMESTAMP(3) NOT NULL,
    "telefone" TEXT NOT NULL,
    "email" TEXT,
    "endereco" TEXT NOT NULL,

    CONSTRAINT "tutor_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."pet" (
    "id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "nome" TEXT NOT NULL,
    "especie" TEXT NOT NULL,
    "raca" TEXT NOT NULL,
    "identificador" BOOLEAN NOT NULL,
    "tipoIdentificador" TEXT,
    "codigoIdentificador" TEXT,
    "vacinas" JSONB NOT NULL,

    CONSTRAINT "pet_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."atendimento" (
    "id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "resumo" TEXT NOT NULL,
    "descricao" TEXT NOT NULL,
    "tipo" TEXT NOT NULL,

    CONSTRAINT "atendimento_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."agendamento" (
    "id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "when" TIMESTAMP(3) NOT NULL,
    "resumo" TEXT NOT NULL,
    "descricao" TEXT NOT NULL,
    "status" TEXT NOT NULL,

    CONSTRAINT "agendamento_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."vendas" (
    "id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "produtos" JSONB NOT NULL,
    "total" DOUBLE PRECISION NOT NULL,
    "desconto" DOUBLE PRECISION NOT NULL,
    "valorFinal" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "vendas_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."produtos" (
    "id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "nome" TEXT NOT NULL,
    "descricao" TEXT NOT NULL,
    "valorUnitario" DOUBLE PRECISION NOT NULL,
    "tipo" BOOLEAN NOT NULL,

    CONSTRAINT "produtos_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "funcionario_cpf_key" ON "public"."funcionario"("cpf");

-- CreateIndex
CREATE UNIQUE INDEX "funcionario_telefone_key" ON "public"."funcionario"("telefone");

-- CreateIndex
CREATE UNIQUE INDEX "funcionario_email_key" ON "public"."funcionario"("email");

-- CreateIndex
CREATE UNIQUE INDEX "funcionario_login_key" ON "public"."funcionario"("login");

-- CreateIndex
CREATE UNIQUE INDEX "funcionario_crmv_key" ON "public"."funcionario"("crmv");

-- CreateIndex
CREATE UNIQUE INDEX "tutor_cpf_key" ON "public"."tutor"("cpf");

-- CreateIndex
CREATE UNIQUE INDEX "tutor_telefone_key" ON "public"."tutor"("telefone");

-- CreateIndex
CREATE UNIQUE INDEX "tutor_email_key" ON "public"."tutor"("email");
