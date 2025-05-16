/**
 * author: v_janyzheng
 * date: 2023/12/26
 *
 */

import { Controller, Get, Res } from '@nestjs/common';
import { AppService } from './app.service';
import { Response } from 'express';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get('api/hello')
  getHello(): string {
    return this.appService.getHello();
  }

  @Get('api/env')
  printEnv(@Res() res: Response) {
    const { NODE_ENV = 'test', PORT = 3000, TOKEN } = process.env;
    res.send({
      NODE_ENV,
      PORT,
      TOKEN,
    });
  }

  @Get('/*')
  serveHTML(@Res() res: Response) {
    const html = this.appService.getHtml();
    res.send(html);
  }
}
