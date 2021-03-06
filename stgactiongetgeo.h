#ifndef STGACTIONGETGEO_H
#define STGACTIONGETGEO_H

#include "abstractstgaction.h"

#include <QGeoPositionInfoSource>

class QGeoPositionInfo;
class StgActionGetGeoPrivate;
class StgActionGetGeo : public AbstractStgAction
{
    Q_OBJECT
public:
    StgActionGetGeo(QObject *parent = 0);
    ~StgActionGetGeo();

    static QString keyword();
    void start(Telegram *tg, const InputPeer &peer, qint64 replyToId = 0, const QString &attachedMsg = QString(), bool extraMessages = true);

private slots:
    void positionUpdated(const QGeoPositionInfo & update);
    void error(QGeoPositionInfoSource::Error positioningError);

private:
    StgActionGetGeoPrivate *p;
};

#endif // STGACTIONGETGEO_H
