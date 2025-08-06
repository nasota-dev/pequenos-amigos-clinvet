import {Request, Response } from "express"
import prisma from "../lib/db.ts"


export class AuthController {
  async signUp(request:Request, response:Response) {
    const {name, email, cpf, login, pass} = request.body
  }
  async singIn(request:Request, response:Response){
    const {login, pass} = request.body
  }
}

