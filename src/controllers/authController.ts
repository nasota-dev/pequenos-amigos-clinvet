import {Request, Response } from "fastify"
import prisma from "../lib/db.ts"


export class AuthController {
  async register(request:Request, response:Response) {
    const {name, email, cpf, login, pass}
  }
}

